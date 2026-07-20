# Lesson Learned: Restoring Connectivity Between the MacBook and Domain Controller

## Date

July 2026

---

## Objective

Enable Remote Desktop access from the MacBook Neo to the Windows Server Domain Controller hosted in VMware Workstation.

---

## Environment

### Host

- Windows Gaming PC
- VMware Workstation

### Virtual Machine

- Windows Server (DC-01)
- Active Directory Domain Services
- DNS

### Client

- MacBook Neo
- Microsoft Remote Desktop

---

## Problem

The MacBook could not connect to the Domain Controller using Remote Desktop.

Although the virtual machine appeared to be running normally, network communication between the MacBook and the Domain Controller was unreliable.

---

## Symptoms

- Remote Desktop connection failed.
- Ping requests timed out.
- Network troubleshooting produced inconsistent results.
- The virtual machine did not always appear reachable from other devices on the network.

---

## Investigation

The following areas were examined:

- IP configuration
- Default gateway configuration
- VMware virtual network settings
- Bridged networking configuration
- VMware Bridge Protocol bindings
- Host network adapter configuration

Each possible cause was tested individually before moving to the next.

---

## Root Cause

The virtual networking configuration prevented the Domain Controller from communicating correctly with the physical network.

Adjusting the VMware networking configuration and verifying the correct bridged adapter allowed the virtual machine to obtain proper network connectivity.

---

## Resolution

- Verified IP addressing.
- Confirmed the correct default gateway.
- Configured VMware to use the appropriate bridged network adapter.
- Verified VMware Bridge Protocol was enabled.
- Confirmed successful ping responses.
- Successfully established Remote Desktop from the MacBook Neo to the Domain Controller.

---

## Outcome

Remote administration from the MacBook became fully functional.

The Domain Controller could now be managed remotely while remaining hosted on the Windows gaming desktop.

---

## Lessons Learned

- Troubleshoot one variable at a time.
- Verify basic network connectivity before troubleshooting Remote Desktop.
- Incorrect virtual networking can appear similar to DNS or firewall problems.
- Bridged networking requires the correct physical adapter.
- Careful documentation makes future troubleshooting significantly easier.
