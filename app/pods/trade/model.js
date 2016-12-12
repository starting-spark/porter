import DS from 'ember-data';

export default DS.Model.extend({
  transactionDatetime: DS.attr('utc'),
  ticker: DS.attr(),
  price: DS.attr(),
  quantity: DS.attr(),
  commission: DS.attr(),
});
