"use strict";!function(t){var e=function(e){if(e=e||""){var a=this;e.each(function(e,n){if(!t(n).parent("div.form-tags")[0]){t(n).wrap(t('<div class="form-tags"></div>')).hide();var i=t('<input class="input-tags form-control" />').insertAfter(t(n));a.bind(i)}})}};e.prototype={set:function(e,n){self=t(e);var i=this;e.each(function(e,s){for(var e in n){var r=t('<span class="label label-info">'+n[e]+"</span>");t(s).after(r),r.click(a),i.value(r)}})},bind:function(e){var n=this;e.keypress(function(i){self=t(this);var s=i.keyCode?i.keyCode:i.which;if("13"==s){var r=t(this).val();if(r){var o=t('<span class="label label-info">'+r+"</span>");self.before(o).val(""),o.click(a),n.value(e)}}})},value:function(e){var a=e.prevAll("input"),n=e.parent().children("span.label"),i=[];return n.each(function(e,a){i.push(t(a).text())}),a.val(i)}};var a=function(){var e=t(this),a=e.text(),i=t('<input class="form-control input-tags" type="text" />');e.after(i).hide(),i.val(a).focus().blur(function(){n(e,i)}).keypress(function(t){var a=t.keyCode?t.keyCode:t.which;"13"==a&&n(e,i)})},n=function(t,a){var n=a.val(),i=t.next("input.input-tags");n?t.text(n).show():t.remove(),(new e).value(i),a.remove(),i.focus()};t.fn.tags=function(){var t=new e(this),a=Array.prototype.slice.call(arguments);return t.set(this,a),this}}(jQuery),$(function(){$("head").append($("<style>.form-tags span, .input-tags {padding: .3em .6em .3em; display: inline-block;font-size: 14px;margin: 4px 4px 0 0;line-height: 26px;font-weight: normal;}.input-tags {width: auto;}</style>")),$('[data-toggle="tags"]').tags()});
