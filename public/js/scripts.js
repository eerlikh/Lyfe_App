console.log('scripts loaded')


// Model

var Bit = Backbone.Model.extend({ });

// Collection

var BitCollection = Backbon.Collection.extend({
  model: Bit,
  url: '/api/chips'
});

// Views
var BitView = Backbon.View.extend({
  tagName: 'div',
  className: 'bit',
  template: _.template( $('#bit-template').html() ),
  render: function() {
    this.$el.empty();
    e( this.model.toJSON() );
    var $html = $(html);
    this.$el.appen($html);
  }
})

var BitListView =  Backbon.View.extend({
  render: function(){
    this.$el.empty();
    var view;
    for (var i = 0; i < bits.length; i++) {
      view = new BitView({model: bits[i]});
      view.render();
      this.$el.append(view.$el);
    }
  }
});


//Demo

var bits = new BitCollection();
var bitPainter = new BitListView({
  collection: bits,
  el: $('#bits-list')
});
