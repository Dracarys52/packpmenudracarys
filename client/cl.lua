
ESX = nil



function sauvskin()
    TriggerEvent('skinchanger:getSkin', function(skin)
        TriggerServerEvent('esx_skin:save', skin)
    end)
end


local Shop = {   
	Base = { Header = {"commonmenu", "interaction_bgd"}, Color = {color_Green}, HeaderColor = {255, 0, 0}, Title = 'Magasins'},
	Data = { currentMenu = "Magasins :", GetPlayerName()},
     Events = {
        onExited = function(self, _, btn, CMenu, menuData, currentButton, currentBtn, currentSlt, result, slide, onSlide) 
      ClearPedTasks(PlayerPedId())
            TriggerEvent('skinchanger:modelLoaded')
            ESX.ShowColoredNotification('✅ Synchronisation effectuée.', 18)
        end,
        onSelected = function(self, _, btn, PMenu, menuData, currentButton, currentBtn, currentSlt, result, slide)
      local slide, btn, check, closestPlayer, closestDistance, playerPed, coords = btn.slidenum, btn.name, btn.unkCheckbox, ESX.Game.GetClosestPlayer(), PlayerPedId(), GetEntityCoords(playerPed)

         
        end,
        onSlide = function(menuData, btn, currentButton, currentSlt, slide, PMenu)
            local currentMenu, currentBtn, slide, btn, ped = menuData.currentMenu, menuData.currentBtn, btn.slidenum, btn.name, GetPlayerPed(-1)
 if btn == "T-Shirt" and slide ~= -1 then
                tshirt = slide - 1
                TriggerEvent('skinchanger:change', 'tshirt_1', tshirt)
            elseif btn == "Couleur T-Shirt" and slide ~= -1 then
                tshirt2 = slide - 1
                TriggerEvent('skinchanger:change', 'tshirt_2', tshirt2)
            elseif btn == "Torse" and slide ~= -1 then
                torse = slide - 1
                TriggerEvent('skinchanger:change', 'torso_1', torse)
            elseif btn == "Couleur Torse" and slide ~= -1 then
                torse2 = slide - 1
                TriggerEvent('skinchanger:change', 'torso_2', torse2)
            elseif btn == "Pantalon" and slide ~= -1 then
                pantalon = slide - 1
                TriggerEvent('skinchanger:change', 'pants_1', pantalon)
            elseif btn == "Couleur Pantalon" and slide ~= -1 then
                pantalon2 = slide - 1
                TriggerEvent('skinchanger:change', 'pants_2', pantalon2)
            elseif btn == "Chaussures" and slide ~= -1 then
                chaussures = slide - 1
                TriggerEvent('skinchanger:change', 'shoes_1', chaussures)
            elseif btn == "Couleur Chaussures" and slide ~= -1 then
                chaussures2 = slide - 1
                TriggerEvent('skinchanger:change', 'shoes_2', chaussures2)
            elseif btn == "Bras" and slide ~= -1 then
                bras = slide - 1
                TriggerEvent('skinchanger:change', 'arms', bras)
            elseif btn == "Couleur Bras" and slide ~= -1 then
                bras2 = slide - 1
                TriggerEvent('skinchanger:change', 'arms_2', bras2)
            elseif btn == "Sac à dos" and slide ~= -1 then
                sac = slide - 1
                TriggerEvent('skinchanger:change', 'bags_1', sac)
            elseif btn == "Couleur Sac" and slide ~= -1 then
                sac2 = slide - 1
                TriggerEvent('skinchanger:change', 'bags_2', sac2)
            elseif btn == "Montre" and slide ~= -1 then
                montre = slide - 1
                TriggerEvent('skinchanger:change', 'watches_1', montre)
            elseif btn == "Couleur Montre" and slide ~= -1 then
                montre2 = slide - 1
                TriggerEvent('skinchanger:change', 'watches_2', montre2)
            elseif btn == "Chaîne" and slide ~= -1 then
                chaine = slide - 1
                TriggerEvent('skinchanger:change', 'chain_1', chaine)
            elseif btn == "Couleur Chaîne" and slide ~= -1 then
               chaine2 = slide - 1
                TriggerEvent('skinchanger:change', 'chain_2', chaine2)
            elseif btn == "Bracelets" and slide ~= -1 then
                bracelets = slide - 1
                TriggerEvent('skinchanger:change', 'bracelets_1', bracelets)
            elseif btn == "Couleur Bracelets" and slide ~= -1 then
               bracelets2 = slide - 1
                TriggerEvent('skinchanger:change', 'bracelets_2', bracelets2)
            elseif btn == "Chapeau" and slide ~= -1 then
                chapeau = slide - 1
                TriggerEvent('skinchanger:change', 'helmet_1', chapeau)
            elseif btn == "Couleur Chapeau" and slide ~= -1 then
                chapeau2 = slide - 1
                TriggerEvent('skinchanger:change', 'helmet_2', chapeau2)
            elseif btn == "Lunettes" and slide ~= -1 then
                lunettes = slide - 1
                TriggerEvent('skinchanger:change', 'glasses_1', lunettes)
            elseif btn == "Couleur Lunettes" and slide ~= -1 then
                lunettes2 = slide - 1
                TriggerEvent('skinchanger:change', 'glasses_2', lunettes2)
            elseif btn == "Oreillette" and slide ~= -1 then
                oreillette = slide - 1
                TriggerEvent('skinchanger:change', 'ears_1', oreillette)
            elseif btn == "Couleur Oreillette" and slide ~= -1 then
                oreillette2 = slide - 1
                TriggerEvent('skinchanger:change', 'ears_2', oreillette2)
              elseif btn == "~r~Fermer le menu" then
                CloseMenu('')
              elseif btn == "~o~Valider/Payer" then
                sauvskin()
                ESX.ShowNotification("~y~Vous~s~ avez acheter vos vêtements.\n A bientôt !")
                TriggerServerEvent('vet:buycloth')
            end
        end 
	},    
	Menu = {  
		["Magasins :"] = { 
			b = { 
         {name = "~b~Vêtements", ask = "→→", askX = true},
         {name = "~y~Accessoires", ask = "→→", askX = true},
         {name = "~o~Valider/Payer", ask = "~g~200 E", askX = true},
         {name = "~p~---------------------------------------------------------------------", ask = "", askX = true},  
         {name = "~r~Fermer le menu", ask = "→", askX = true},        
			}  
		},
 ["~b~vêtements"] = {
            b = {
                {name = "T-Shirt", slidemax = 143},
                {name = "Couleur T-Shirt", slidemax = 21},
                {name = "Torse", slidemax = 289},
                {name = "Couleur Torse", slidemax = 21},
                {name = "Bras", slidemax = 167},
                {name = "Couleur Bras", slidemax = 15},
                {name = "Pantalon", slidemax = 114},
                {name = "Couleur Pantalon", slidemax = 21},
                {name = "Chaussures", slidemax = 90},
                {name = "Couleur Chaussures", slidemax = 21},
            }
        },
        ["~y~accessoires"] = {
            b = {
                {name = "Sac à dos", slidemax = 80},
                {name = "Couleur Sac", slidemax = 25},
                {name = "Montre", slidemax = 29},
                {name = "Couleur Montre", slidemax = 10},
                {name = "Chaîne", slidemax = 131},
                {name = "Couleur Chaîne", slidemax = 15},
                {name = "Bracelets", slidemax = 7},
                {name = "Couleur Bracelets", slidemax = 5},

            }
        },
	}
}    


local dvet = {
  {x = 426.278, y= -798.816, z=29.491},
  {x=72.254,    y=-1399.102, z=28.376},
  {x=-703.776,  y=-152.258,  z=36.415},
  {x=-167.863,  y=-298.969,  z=38.733},
  {x=-829.413,  y=-1073.710, z=10.328},
  {x=-1447.797, y=-242.461,  z=48.820},
  {x=11.632,    y=6514.224,  z=30.877},
  {x=123.646,   y=-219.440,  z=53.557},
  {x=1696.291,  y=4829.312,  z=41.063},
  {x=618.093,   y=2759.629,  z=41.088},
  {x=1190.550,  y=2713.441,  z=37.222},
  {x=-1193.429, y=-772.262,  z=16.324},
  {x=-3172.496, y=1048.133,  z=19.863},
  {x=-1108.441, y=2708.923,  z=18.107},
}

Citizen.CreateThread(function()
  while true do
      Citizen.Wait(0) 
      for k in pairs(dvet) do
          local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
          local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, dvet[k].x, dvet[k].y, dvet[k].z)
          if dist <= 2.0 then 
              ESX.ShowHelpNotification("Appuyez sur ~INPUT_PICKUP~ au Magasin")
              if IsControlJustPressed(1,38) then 			
               CreateMenu(Shop)    
                  end
              end 
          end
      end
  end)

Citizen.CreateThread(function()
  for _, pos in pairs(dvet) do
    blips = AddBlipForCoord(pos.x, pos.y, pos.z)
    SetBlipSprite(blips, 73)
    SetBlipScale(blips, 1.0)
    SetBlipDisplay(blips, 4)
    SetBlipColour(blips, 81)
    SetBlipAsShortRange(blips, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Magasins de vêtements")
    EndTextCommandSetBlipName(blips)
  end
end)


-- MAGASIN DE MASQUE

local Shop = {   
  Base = { Header = {"commonmenu", "interaction_bgd"}, Color = {color_Green}, HeaderColor = {255, 0, 0}, Title = 'Magasins De Masque'},
  Data = { currentMenu = "Magasins :", GetPlayerName()},
     Events = {
        onExited = function(self, _, btn, CMenu, menuData, currentButton, currentBtn, currentSlt, result, slide, onSlide) 
      ClearPedTasks(PlayerPedId())
            TriggerEvent('skinchanger:modelLoaded')
            ESX.ShowColoredNotification('✅ Synchronisation effectuée.', 18)
        end,
        onSelected = function(self, _, btn, PMenu, menuData, currentButton, currentBtn, currentSlt, result, slide)
      local slide, btn, check, closestPlayer, closestDistance, playerPed, coords = btn.slidenum, btn.name, btn.unkCheckbox, ESX.Game.GetClosestPlayer(), PlayerPedId(), GetEntityCoords(playerPed)

        end,
        onSlide = function(menuData, btn, currentButton, currentSlt, slide, PMenu)
            local currentMenu, currentBtn, slide, btn, ped = menuData.currentMenu, menuData.currentBtn, btn.slidenum, btn.name, GetPlayerPed(-1)
 if btn == "T-Shirt" and slide ~= -1 then
                tshirt = slide - 1
                TriggerEvent('skinchanger:change', 'tshirt_1', tshirt)
           
              elseif btn == "~r~Fermer le menu" then
                CloseMenu('')
              elseif btn == "~o~Valider/Payer" then
                sauvskin()
                ESX.ShowNotification("~y~Vous~s~ avez acheter vos vêtements.\n A bientôt !")
                TriggerServerEvent('vet:buycloth')
                   elseif btn == "Lunettes" and slide ~= -1 then
                lunettes = slide - 1
                TriggerEvent('skinchanger:change', 'glasses_1', lunettes)
            elseif btn == "Couleur Lunettes" and slide ~= -1 then
                couleurlunettes = slide - 1
                TriggerEvent('skinchanger:change', 'glasses_2', couleurlunettes)
            elseif btn == "Chapeau" and slide ~= -1 then
                chapeau = slide - 1
                TriggerEvent('skinchanger:change', 'helmet_1', chapeau)
            elseif btn == "Couleur Chapeau" and slide ~= -1 then
                couleurchapeau = slide - 1
                TriggerEvent('skinchanger:change', 'helmet_2', couleurchapeau)
                    elseif btn == "Masque" and slide ~= -1 then
                masque = slide - 1
                TriggerEvent('skinchanger:change', 'mask_1', masque)
              elseif btn == "Couleur Masque" then
                couleurmasque = slide - 1
                TriggerEvent('skinchanger:change', 'mask_2', couleurmasque)

            end
        end 
  },    
  Menu = {  
    ["Magasins :"] = { 
      b = { 
         {name = "~y~Articles", ask = "→→", askX = true},
         {name = "~o~Valider/Payer", ask = "~g~200 E", askX = true},
         {name = "~p~---------------------------------------------------------------------", ask = "", askX = true},  
         {name = "~r~Fermer le menu", ask = "→", askX = true},        
      }  
    },
        ["~y~articles"] = { 
      b = {       
               {name = "Masque", slidemax = 134},
               {name = "Couleur Masque", slidemax = 134},
               {name = "Chapeau", slidemax = 134},
               {name = "Couleur Chapeau", slidemax = 15},
               {name = "Lunettes", slidemax = 27},
               {name = "Couleur Lunettes", slidemax = 15},
         } 
    }, 
  }
}    


local dmasque = {
  {x = -1337.041, y= -1278.27, z=4.86},
}

Citizen.CreateThread(function()
  while true do
      Citizen.Wait(0) 
      for k in pairs(dmasque) do
          local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
          local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, dmasque[k].x, dmasque[k].y, dmasque[k].z)
          if dist <= 2.0 then 
              ESX.ShowHelpNotification("Appuyez sur ~INPUT_PICKUP~ au Magasin")
              if IsControlJustPressed(1,38) then      
               CreateMenu(Shop)    
                  end
              end 
          end
      end
  end)

Citizen.CreateThread(function()
  for _, pos in pairs(dmasque) do
    blips = AddBlipForCoord(pos.x, pos.y, pos.z)
    SetBlipSprite(blips, 362)
    SetBlipScale(blips, 1.0)
    SetBlipDisplay(blips, 4)
    SetBlipColour(blips, 81)
    SetBlipAsShortRange(blips, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Magasins de Masque")
    EndTextCommandSetBlipName(blips)
  end
end)

-- Coiffeur


local Shop = {   
  Base = { Header = {"commonmenu", "interaction_bgd"}, Color = {color_Green}, HeaderColor = {255, 0, 0}, Title = 'Coiffeur'},
  Data = { currentMenu = "Magasins :", GetPlayerName()},
     Events = {
        onExited = function(self, _, btn, CMenu, menuData, currentButton, currentBtn, currentSlt, result, slide, onSlide) 
      ClearPedTasks(PlayerPedId())
            TriggerEvent('skinchanger:modelLoaded')
            ESX.ShowColoredNotification('✅ Synchronisation effectuée.', 18)
        end,
        onSelected = function(self, _, btn, PMenu, menuData, currentButton, currentBtn, currentSlt, result, slide)
      local slide, btn, check, closestPlayer, closestDistance, playerPed, coords = btn.slidenum, btn.name, btn.unkCheckbox, ESX.Game.GetClosestPlayer(), PlayerPedId(), GetEntityCoords(playerPed)

            
         
        end,
        onSlide = function(menuData, btn, currentButton, currentSlt, slide, PMenu)
            local currentMenu, currentBtn, slide, btn, ped = menuData.currentMenu, menuData.currentBtn, btn.slidenum, btn.name, GetPlayerPed(-1)
            if btn == "~y~Coupes" and slide ~= -1 then
                coupe = slide - 1
                TriggerEvent('skinchanger:change', 'hair_1', coupe)
               elseif btn == "~y~Tienture coupes" and slide ~= -1 then
                teinture1 = slide - 1
                TriggerEvent('skinchanger:change', 'hair_color_1', teinture1)
                 elseif btn == "~b~Barbes" and slide ~= -1 then
                barbe = slide - 1
                TriggerEvent('skinchanger:change', 'beard_1', barbe)
            elseif btn == "~b~Taille" and slide ~= -1 then
                taillebarbe = slide - 1
                TriggerEvent('skinchanger:change', 'beard_2', taillebarbe)
                     elseif btn == "~b~Tienture Barbes" and slide ~= -1 then
                teinturebarbe = slide - 1
                TriggerEvent('skinchanger:change', 'beard_3', teinturebarbe)
              elseif btn == "~r~Fermer le menu" then
                CloseMenu('')
              elseif btn == "~o~Valider/Payer" then
                sauvskin()
                ESX.ShowNotification("~y~Vous~s~ avez acheter vos vêtements.\n A bientôt !")
                TriggerServerEvent('vet:buycloth')
          

            end
        end 
  },    
  Menu = {  
    ["Magasins :"] = { 
      b = { 
          {name = "~y~Coupes", slidemax = 73},
          {name = "~y~Tienture coupes", slidemax = 63},
          {name = "~p~---------------------------------------------------------------------", ask = "", askX = true},  
          {name = "~b~Barbes", slidemax = 28},
          {name = "~b~Taille", slidemax = 10},
          {name = "~b~Tienture Barbes", slidemax = 63},
          {name = "~p~---------------------------------------------------------------------", ask = "", askX = true},  
          {name = "~o~Valider/Payer", ask = "~g~200 E", askX = true},
          {name = "~p~---------------------------------------------------------------------", ask = "", askX = true},  
          {name = "~r~Fermer le menu", ask = "→", askX = true},        
      }  
    },

  }
}    


local dcoiffeure = {
    {x = -814.3, y = -183.8, z = 36.6},
    {x = 136.8, y = -1708.4, z = 28.3},
    {x = -1282.6, y = -1116.8, z = 6.0},
    {x = 1931.5, y = 3729.7, z = 31.8},
    {x = 1212.8, y = -472.9, z = 65.2},
}

Citizen.CreateThread(function()
  while true do
      Citizen.Wait(0) 
      for k in pairs(dcoiffeure) do
          local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
          local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, dcoiffeure[k].x, dcoiffeure[k].y, dcoiffeure[k].z)
          if dist <= 2.0 then 
              ESX.ShowHelpNotification("Appuyez sur ~INPUT_PICKUP~ au Coiffeure")
              if IsControlJustPressed(1,38) then      
               CreateMenu(Shop)    
                  end
              end 
          end
      end
  end)

Citizen.CreateThread(function()
  for _, pos in pairs(dcoiffeure) do
    blips = AddBlipForCoord(pos.x, pos.y, pos.z)
    SetBlipSprite(blips, 71)
    SetBlipScale(blips, 1.0)
    SetBlipDisplay(blips, 4)
    SetBlipColour(blips, 81)
    SetBlipAsShortRange(blips, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Coiffeure")
    EndTextCommandSetBlipName(blips)
  end
end)


