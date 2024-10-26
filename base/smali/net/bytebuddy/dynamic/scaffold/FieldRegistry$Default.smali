.class public Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default;
.super Ljava/lang/Object;
.source "FieldRegistry.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Compiled;,
        Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;
    }
.end annotation


# instance fields
.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 84
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;",
            ">;)V"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default;->entries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 72
    instance-of p1, p1, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default;

    return p1
.end method

.method public compile(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Compiled;
    .locals 8

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 110
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 111
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;

    .line 112
    invoke-virtual {v3}, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;->getFieldAttributeAppenderFactory()Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;

    if-nez v4, :cond_0

    .line 114
    invoke-virtual {v3}, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;->getFieldAttributeAppenderFactory()Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;

    move-result-object v4

    invoke-interface {v4, p1}, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;->make(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;

    move-result-object v4

    .line 115
    invoke-virtual {v3}, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;->getFieldAttributeAppenderFactory()Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_0
    new-instance v5, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Compiled$Entry;

    invoke-virtual {v3, p1}, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;->resolve(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher;

    move-result-object v6

    invoke-virtual {v3}, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;->getDefaultValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3}, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;->getTransformer()Lnet/bytebuddy/dynamic/Transformer;

    move-result-object v3

    invoke-direct {v5, v6, v4, v7, v3}, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Compiled$Entry;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;Ljava/lang/Object;Lnet/bytebuddy/dynamic/Transformer;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_1
    new-instance v1, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Compiled;

    invoke-direct {v1, p1, v0}, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Compiled;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 72
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default;->entries:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default;->entries:Ljava/util/List;

    if-nez v1, :cond_3

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :goto_0
    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 72
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default;->entries:Ljava/util/List;

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v1, v0

    return v1
.end method

.method public prepend(Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;Ljava/lang/Object;Lnet/bytebuddy/dynamic/Transformer;)Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">;",
            "Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;",
            "Ljava/lang/Object;",
            "Lnet/bytebuddy/dynamic/Transformer<",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    new-instance v1, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;

    invoke-direct {v1, p1, p2, p3, p4}, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;-><init>(Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;Ljava/lang/Object;Lnet/bytebuddy/dynamic/Transformer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 104
    new-instance p1, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default;

    invoke-direct {p1, v0}, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default;-><init>(Ljava/util/List;)V

    return-object p1
.end method
