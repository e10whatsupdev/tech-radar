const Cycle = function (name, order) {
  var self = {};

  self.name = function () {
    return name;
  };

  self.order = function () {
    return order;
  };

  return self;
};

export default Cycle
