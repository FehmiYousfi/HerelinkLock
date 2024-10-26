.class public Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory$Compound;
.super Ljava/lang/Object;
.source "FieldAttributeAppender.java"

# interfaces
.implements Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Compound"
.end annotation


# instance fields
.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;",
            ">;)V"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory$Compound;->factories:Ljava/util/List;

    .line 89
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;

    .line 90
    instance-of v1, v0, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory$Compound;

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory$Compound;->factories:Ljava/util/List;

    check-cast v0, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory$Compound;

    iget-object v0, v0, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory$Compound;->factories:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 92
    :cond_1
    instance-of v1, v0, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$NoOp;

    if-nez v1, :cond_0

    .line 93
    iget-object v1, p0, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory$Compound;->factories:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public varargs constructor <init>([Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;)V
    .locals 0

    .line 79
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory$Compound;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 65
    instance-of p1, p1, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory$Compound;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 65
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory$Compound;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory$Compound;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory$Compound;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory$Compound;->factories:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory$Compound;->factories:Ljava/util/List;

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

    .line 65
    iget-object v0, p0, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory$Compound;->factories:Ljava/util/List;

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

.method public make(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;
    .locals 3

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory$Compound;->factories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    iget-object v1, p0, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory$Compound;->factories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;

    .line 102
    invoke-interface {v2, p1}, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;->make(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    :cond_0
    new-instance p1, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Compound;

    invoke-direct {p1, v0}, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Compound;-><init>(Ljava/util/List;)V

    return-object p1
.end method
