.class public Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Compound;
.super Ljava/lang/Object;
.source "MethodAttributeAppender.java"

# interfaces
.implements Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Compound"
.end annotation


# instance fields
.field private final methodAttributeAppenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;",
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
            "Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;",
            ">;)V"
        }
    .end annotation

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Compound;->methodAttributeAppenders:Ljava/util/List;

    .line 413
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

    .line 414
    instance-of v1, v0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Compound;

    if-eqz v1, :cond_1

    .line 415
    iget-object v1, p0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Compound;->methodAttributeAppenders:Ljava/util/List;

    check-cast v0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Compound;

    iget-object v0, v0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Compound;->methodAttributeAppenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 416
    :cond_1
    instance-of v1, v0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$NoOp;

    if-nez v1, :cond_0

    .line 417
    iget-object v1, p0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Compound;->methodAttributeAppenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public varargs constructor <init>([Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;)V
    .locals 0

    .line 402
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Compound;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V
    .locals 2

    .line 424
    iget-object v0, p0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Compound;->methodAttributeAppenders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

    .line 425
    invoke-interface {v1, p1, p2, p3}, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 387
    instance-of p1, p1, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Compound;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 387
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Compound;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Compound;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Compound;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Compound;->methodAttributeAppenders:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Compound;->methodAttributeAppenders:Ljava/util/List;

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

    .line 387
    iget-object v0, p0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Compound;->methodAttributeAppenders:Ljava/util/List;

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
