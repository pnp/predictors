﻿using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Management.Automation;
using System.Management.Automation.Runspaces;
using System.Threading;
using PnP.PowerShell.Predictor.Abstractions.Interfaces;

namespace PnP.PowerShell.Predictor.Utilities
{
    using PowerShell = System.Management.Automation.PowerShell;
    /// <summary>
    /// A PowerShell environment to run PowerShell cmdlets and scripts.
    /// </summary>
    internal class PowerShellRuntime : IPowerShellRuntime, IDisposable
    {
        private PowerShell? _runtime;
        private PowerShell? Runtime
        {
            get
            {
                if (_runtime is null)
                {
                    _runtime = PowerShell.Create(DefaultRunspace);
                }

                return _runtime;
            }
        }

        private readonly Lazy<Runspace> _defaultRunspace = new(() => PowerShellRunspaceUtilities.GetMinimalRunspace());

        /// <inheritdoc />
        public Runspace DefaultRunspace => _defaultRunspace.Value;

        /// <inheritdoc />
        public PowerShell? ConsoleRuntime { get; } = PowerShell.Create(System.Management.Automation.RunspaceMode.CurrentRunspace);

        private string? _hostname;
        /// <inheritdoc />
        public string? HostName
        {
            get
            {
                if (_hostname == null)
                {
                    var results = PowerShellRuntime.ExecuteScript<string>(ConsoleRuntime, "$Host.Name");

                    if (results == null || results.Count() == 0)
                    {
                        _hostname = string.Empty;
                    }
                    else
                    {
                        _hostname = results[0];
                    }
                }

                return _hostname;
            }
        }

        public void Dispose()
        {
            if (_runtime is not null)
            {
                _runtime.Dispose();
                _runtime = null;
            }

            if (_defaultRunspace.IsValueCreated)
            {
                _defaultRunspace.Value.Dispose();
            }

            if (ConsoleRuntime is not null)
            {
                ConsoleRuntime.Dispose();
            }
        }

        /// <inheritdoc />
        public IList<T> ExecuteScript<T>(string contents) => PowerShellRuntime.ExecuteScript<T>(Runtime, contents);

        /// <inheritdoc />
        private static IList<T> ExecuteScript<T>(PowerShell? runtime, string contents)
        {
            runtime?.Commands.Clear();
            runtime?.AddScript(contents);
            Collection<T>? result = runtime?.Invoke<T>();

            return result?.ToList() ?? new List<T>();
        }
    }
}
