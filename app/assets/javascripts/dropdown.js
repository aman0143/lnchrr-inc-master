function makeNavHover() 
{

                //graceful degradation
                $('#ui_element').find('ul').hide();
                $('#ui_element').find('.m_itemMain').click(
                    function(){

                        if(!$('#ui_element ul').is(':visible'))
                        {
                        $('.m_itemMain').addClass('m_down').removeClass('m_up');
                        }
                        else
                        {
                        $('.m_itemMain').addClass('m_up').removeClass('m_down');
                        }
                        $("#ui_element ul").toggle(function(){
                        var $this   = $(this);
                        
                        var $menu   = $this.prev();
                        var t = 50;
                        $($menu.find('li').get().reverse()).each(function(){
                            var $li = $(this);
                            var hidemenu = function(){$li.hide();};
                            setTimeout(hidemenu,t+=50);
                        });
                    }
                );
                    }
                );
                
            
}
     
        