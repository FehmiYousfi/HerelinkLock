.class public Lorg/cubepilot/herelinksettings/ButtonsAdapter$AdapterDataItem;
.super Ljava/lang/Object;
.source "ButtonsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cubepilot/herelinksettings/ButtonsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterDataItem"
.end annotation


# instance fields
.field idModelPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public layoutId:I


# direct methods
.method public varargs constructor <init>(I[Landroid/util/Pair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput p1, p0, Lorg/cubepilot/herelinksettings/ButtonsAdapter$AdapterDataItem;->layoutId:I

    .line 140
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonsAdapter$AdapterDataItem;->idModelPairs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 157
    :cond_1
    check-cast p1, Lorg/cubepilot/herelinksettings/ButtonsAdapter$AdapterDataItem;

    .line 159
    iget v2, p0, Lorg/cubepilot/herelinksettings/ButtonsAdapter$AdapterDataItem;->layoutId:I

    iget v3, p1, Lorg/cubepilot/herelinksettings/ButtonsAdapter$AdapterDataItem;->layoutId:I

    if-eq v2, v3, :cond_2

    return v1

    .line 160
    :cond_2
    iget-object v2, p0, Lorg/cubepilot/herelinksettings/ButtonsAdapter$AdapterDataItem;->idModelPairs:Ljava/util/List;

    iget-object p1, p1, Lorg/cubepilot/herelinksettings/ButtonsAdapter$AdapterDataItem;->idModelPairs:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public getItemModel()Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;
    .locals 4

    .line 144
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/ButtonsAdapter$AdapterDataItem;->idModelPairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 145
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 146
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 166
    iget v0, p0, Lorg/cubepilot/herelinksettings/ButtonsAdapter$AdapterDataItem;->layoutId:I

    mul-int/lit8 v0, v0, 0x1f

    .line 167
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/ButtonsAdapter$AdapterDataItem;->idModelPairs:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method
