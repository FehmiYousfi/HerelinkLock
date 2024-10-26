.class public Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Suppressing"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing$Bound;
    }
.end annotation


# instance fields
.field private final suppressedType:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0

    .line 3888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3889
    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing;->suppressedType:Lnet/bytebuddy/description/type/TypeDescription;

    return-void
.end method

.method protected static of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler;
    .locals 1

    .line 3899
    const-class v0, Lnet/bytebuddy/asm/Advice$NoExceptionHandler;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$NoOp;->INSTANCE:Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$NoOp;

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing;

    invoke-direct {v0, p0}, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public bind(Lnet/bytebuddy/implementation/bytecode/StackManipulation;)Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;
    .locals 2

    .line 3906
    new-instance v0, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing$Bound;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing;->suppressedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-direct {v0, v1, p1}, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing$Bound;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object v0
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 3875
    instance-of p1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 3875
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing;->suppressedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing;->suppressedType:Lnet/bytebuddy/description/type/TypeDescription;

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

    .line 3875
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing;->suppressedType:Lnet/bytebuddy/description/type/TypeDescription;

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
