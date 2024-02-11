import Widget from "resource:///com/github/Aylur/ags/widget.js";
import DesktopMenu from "./DesktopMenu.js";
import options from "../options.js";

const Desktop = () =>
  Widget.EventBox({
    on_secondary_click: (_, event) => DesktopMenu().popup_at_pointer(event),
    child: Widget.Box({
      vertical: true,
      vexpand: true,
      hexpand: true,
      visible: options.desktop.clock.enable.bind("value"),
      setup: (self) =>
        self.hook(options.desktop.clock.position, () => {
          const [hpack = "center", vpack = "center", offset = 64] =
            options.desktop.clock.position.value.split(" ") || [];

          // @ts-expect-error
          self.hpack = hpack;
          self.vpack = vpack;
          self.setCss(`margin: ${Number(offset)}px;`);
        }),
      children: [],
    }),
  });

/** @param {number} monitor */
export default (monitor) =>
  Widget.Window({
    monitor,
    keymode: "on-demand",
    name: `desktop${monitor}`,
    layer: "background",
    class_name: "desktop",
    anchor: ["top", "bottom", "left", "right"],
    child: Desktop(),
  });
