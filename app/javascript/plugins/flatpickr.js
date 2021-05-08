import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

const initFlatpickr = () => {
  flatpickr("#range_start", {
    altInput: true,
    altFormat: 'd-m-Y',
    plugins: [new rangePlugin({ input: "#range_end"})]
  });
}

export { initFlatpickr };



flatpickr(".datepicker", {
  allowInput: true,
  enableTime: false,
  theme: "dark"
});

