%module dungen
%{
    #include "../infrastructure/attributes.h"
%}

void SetTileAttributeInt(TileData* data, const char* name, int value);
void SetTileAttributeFloat(TileData* data, const char* name, float value);
void SetTileAttributeString(TileData* data, const char* name, const char* value);

int GetTileAttributeInt(TileData* data, const char* name);
float GetTileAttributeFloat(TileData* data, const char* name);
char* GetTileAttributeString(TileData* data, const char* name);

bool AddTileTag(TileData* td, char* tag);
bool RemoveTileTag(TileData* td, const char* tag);
TileData** GetTilesTagged(const char* tagString);
bool TileHasTags(TileData* td, const char* tagString);
char** GetTileTags(TileData* td);

typedef enum {
    LessThan,
    LessThanOrEqual,
    GreaterThan,
    GreaterThanOrEqual,
    Equal,
    NotEqual
} AttrComparison;

TileData** GetTilesByAttribute(const char* attrName, AttrComparison comp, const char* value);
bool CheckTileAttribute(TileData* td, const char* attrName, AttrComparison comp, const char* value);

void SetRegionAttributeInt(Region* data, const char* name, int value);
void SetRegionAttributeFloat(Region* data, const char* name, float value);
void SetRegionAttributeString(Region* data, const char* name, const char* value);

int GetRegionAttributeInt(Region* data, const char* name);
float GetRegionAttributeFloat(Region* data, const char* name);
char* GetRegionAttributeString(Region* data, const char* name);

bool AddRegionTag(Region* td, char* tag);
bool RemoveRegionTag(Region* td, const char* tag);
DisposableRegionList GetRegionsTagged(const char* tagString);
bool RegionHasTags(Region* td, const char* tagString);
char** GetRegionTags(Region* td);
