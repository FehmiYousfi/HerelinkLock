.class public Lorg/mockito/internal/util/reflection/Fields$InstanceFields;
.super Ljava/lang/Object;
.source "Fields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/util/reflection/Fields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstanceFields"
.end annotation


# instance fields
.field private final instance:Ljava/lang/Object;

.field private final instanceFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mockito/internal/util/reflection/InstanceField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lorg/mockito/internal/util/reflection/InstanceField;",
            ">;)V"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lorg/mockito/internal/util/reflection/Fields$InstanceFields;->instance:Ljava/lang/Object;

    .line 113
    iput-object p2, p0, Lorg/mockito/internal/util/reflection/Fields$InstanceFields;->instanceFields:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public assignedValues()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/mockito/internal/util/reflection/Fields$InstanceFields;->instanceFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 130
    iget-object v1, p0, Lorg/mockito/internal/util/reflection/Fields$InstanceFields;->instanceFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/internal/util/reflection/InstanceField;

    .line 131
    invoke-virtual {v2}, Lorg/mockito/internal/util/reflection/InstanceField;->read()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public filter(Lorg/mockito/internal/util/collections/ListUtil$Filter;)Lorg/mockito/internal/util/reflection/Fields$InstanceFields;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/internal/util/collections/ListUtil$Filter<",
            "Lorg/mockito/internal/util/reflection/InstanceField;",
            ">;)",
            "Lorg/mockito/internal/util/reflection/Fields$InstanceFields;"
        }
    .end annotation

    .line 117
    new-instance v0, Lorg/mockito/internal/util/reflection/Fields$InstanceFields;

    iget-object v1, p0, Lorg/mockito/internal/util/reflection/Fields$InstanceFields;->instance:Ljava/lang/Object;

    iget-object v2, p0, Lorg/mockito/internal/util/reflection/Fields$InstanceFields;->instanceFields:Ljava/util/List;

    invoke-static {v2, p1}, Lorg/mockito/internal/util/collections/ListUtil;->filter(Ljava/util/Collection;Lorg/mockito/internal/util/collections/ListUtil$Filter;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/mockito/internal/util/reflection/Fields$InstanceFields;-><init>(Ljava/lang/Object;Ljava/util/List;)V

    return-object v0
.end method

.method public instanceFields()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mockito/internal/util/reflection/InstanceField;",
            ">;"
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/mockito/internal/util/reflection/Fields$InstanceFields;->instanceFields:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public names()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/mockito/internal/util/reflection/Fields$InstanceFields;->instanceFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    iget-object v1, p0, Lorg/mockito/internal/util/reflection/Fields$InstanceFields;->instanceFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/internal/util/reflection/InstanceField;

    .line 139
    invoke-virtual {v2}, Lorg/mockito/internal/util/reflection/InstanceField;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public notNull()Lorg/mockito/internal/util/reflection/Fields$InstanceFields;
    .locals 1

    .line 121
    invoke-static {}, Lorg/mockito/internal/util/reflection/Fields;->access$000()Lorg/mockito/internal/util/collections/ListUtil$Filter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mockito/internal/util/reflection/Fields$InstanceFields;->filter(Lorg/mockito/internal/util/collections/ListUtil$Filter;)Lorg/mockito/internal/util/reflection/Fields$InstanceFields;

    move-result-object v0

    return-object v0
.end method
