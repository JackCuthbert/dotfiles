# Kraken X52 Fan & Pump Profile (7800X3D + Noctua)

This document maps out the whisper-quiet `liquidctl` profile optimized for the AMD Ryzen 7 7800X3D CPU, an NZXT Kraken X52 AIO, and premium Noctua static-pressure radiator fans.

## The Liquid-Targeted Curve

Because the 7800X3D spikes thermally in milliseconds due to its dense 3D V-Cache but produces very little total heat, this curve targets **Coolant Temperature** rather than CPU temperature. This prevents the fans from constantly revving up and down unnecessarily.

Furthermore, the pump speeds are locked into broad, steady flat zones to minimize acceleration wear on the Asetek impeller bearing.

| Coolant Temp    | Fan Speed | Pump Speed | Context / Thermal Behavior                                                                                                                            |
| :-------------- | :-------- | :--------- | :---------------------------------------------------------------------------------------------------------------------------------------------------- |
| **≤ 30°C**      | 25%       | 65%        | **Idle / Desktop:** Completely silent fan baseline. Pump at 65% ensures optimal loop pressure while remaining entirely inaudible.                     |
| **36°C – 38°C** | 40%       | 65%        | **Winter Gaming:** Quiet hum; easily handles standard gaming loops during cold Melbourne winters while keeping fans well below the audible threshold. |
| **42°C**        | 55%       | 85%        | **Summer Gaming:** Firm airflow; manages the elevated ambient floor of a hot room. Pump steps up to actively pull heat out of the block.              |
| **48°C**        | 75%       | 100%       | **Heavy Thermal Soak:** Heavy heat dissipation reserved for sustained combined loads (7800X3D + GPU warming the case ambient air).                    |
| **≥ 55°C**      | 100%      | 100%       | **Safety Failsafe:** Emergency fallback threshold designed to protect the AIO tubes and fluid loop from warping or degrading.                         |

---

## Why This Works for Melbourne Climates

### Winter Dynamic

In a cold winter room, your coolant sits exceptionally low. This curve provides a wide thermal buffer before your high-pressure Noctua fans scale up. During winter gaming, the fluid rarely breaks past 38°C, keeping your radiator fans locked into a quiet **25% to 40% speed range**.

### Summer Protection

When Melbourne summer hits and ambient room temperatures climb past 30°C, your coolant idle naturally rises. The expanded **55°C ceiling** accounts for this higher baseline. By smoothing out the ramp transitions and avoiding an aggressive jump to 100% fan speed at 50°C, your system effectively handles the extra ambient heat without generating loud acoustic drone.

---

## Systemd Service Integration

The underlying systemd unit configuration sequence ensures the device initializes properly, applies the cooling profiles above, and turns off all RGB elements at boot.

```ini
[Service]
Type=oneshot
User=root
Group=root
RemainAfterExit=yes

# 1. Initialize all supported hardware at boot
ExecStart=/usr/bin/liquidctl initialize all

# 2. Apply the optimized fluid-temperature cooling curves
ExecStart=/usr/bin/liquidctl --match kraken set fan speed 30 25 36 40 42 55 48 75 55 100
ExecStart=/usr/bin/liquidctl --match kraken set pump speed 30 65 38 65 42 85 46 100 50 100

# 3. Disable all RGB LEDs (Ring and Logo channels combined)
ExecStart=/usr/bin/liquidctl --match kraken set sync color off
```
