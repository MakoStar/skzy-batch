## 文件列表

### 角色

1. HeroCfg.lua（角色配置信息）
2. HeroSkillCfg.lua （角色技能配置）
3. HeroRecordCfg.lua （角色基础档案）
4. HeroAstrolabeCfg.lua（角色神格配置）
5. HeroStandardSystemCfg.lua（角色系统配置）
6. AstrolabeEffectCfg.lua（角色神格详情）

## 权钥

1. 

## 钥从

1. WeaponServantCfg.lua（钥从信息）
2. WeaponEffectCfg.lua（钥从desc）

### 技能

1. DescriptionCfg.lua（所有技能描述）
2. ComboSkillCfg.lua（连携奥义配置）
3. SkillCfg.lua （技能升级配置）
3. PublicSkillCfg.lua（技能类型描述）

### 刻印

1. EquipCfg.lua（刻印基础配置信息）
2. EquipSuitCfg.lua（刻印小说明及icon配置）
3. EquipEffectCfg.lua（刻印详细描述desc）
4. EquipMaterialCfg.lua（刻印突破配置）
5. EquipExpCfg.lua（刻印等级突破）
6. EquipMaterialCfg.lua（刻印突破材料配置信息）

### 敌方

1. CollectMonsterCfg.lua（敌方配置信息）

### 吨吨

1. ChipCfg.lua（管理喵配置）

### 特殊

1. CharactorParamCfg.lua（机制类型信息）
2. PublicAttrCfg.lua（一些属性配置）
3. AchievementStoryCfg.lua（成就事件故事）
4. CollectPictureCfg.lua（图鉴插图配置信息）
5. CollectStoryCfg.lua（一些活动插图等）
6. CollectWordCfg.lua（成就世界观配置）
6. MatrixBeaconCfg.lua（多维信标）
6. ConditionCfg.lua（解锁条件）
7. DrawPoolCfg.lua（卡池配置）
8. ItemCfg.lua （物品材料配置）

## 文件关联(未完成)

### 角色

#### 获取角色稀有度

~~~lua
-- HeroCfg.lua
-- 对应 id 的 table 的 rare 属性

rare = 1 -- B级（3星）角色
rare = 2 -- A级（4星）角色
rare = 3 -- S级（5星）角色
~~~

## 钥从

#### 获取钥从专属desc

~~~lua
-- HeroCfg.lua [table] recommend_combo = {?}
-- WeaponEffectCfg.lua [?][description[]]
~~~

#### 获取钥从详情

~~~lua
-- WeaponServantCfg.lua [钥从ID][effect[角色ID]]
~~~

### 刻印

#### 获取刻印desc

~~~lua
-- EquipRecGroupItem.lua
-- UpdateView 函数

DescriptionCfg[EquipEffectCfg[EquipSuitCfg[slot6].suit_effect[1]].desc[1]].descriptioniption

-- DescriptionCfg.lua
-- EquipEffectCfg.lua
-- EquipSuitCfg.lua
-- 对应刻印的suit === EquipEffectCfg.lua 的 table id
~~~


