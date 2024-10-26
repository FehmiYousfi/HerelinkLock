.class public Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Delegating"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved;
    }
.end annotation


# instance fields
.field protected final adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V
    .locals 0

    .line 5760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5761
    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-void
.end method


# virtual methods
.method public asMethodEnter(Ljava/util/List;Lnet/bytebuddy/jar/asm/ClassReader;)Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Factory;",
            ">;",
            "Lnet/bytebuddy/jar/asm/ClassReader;",
            ")",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;"
        }
    .end annotation

    .line 5777
    new-instance p2, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodEnter;

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-direct {p2, v0, p1}, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodEnter;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;)V

    return-object p2
.end method

.method public asMethodExitTo(Ljava/util/List;Lnet/bytebuddy/jar/asm/ClassReader;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;)Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Factory;",
            ">;",
            "Lnet/bytebuddy/jar/asm/ClassReader;",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;",
            ")",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;"
        }
    .end annotation

    .line 5784
    iget-object p2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {p3}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;->getEnterType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodExit;->of(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    move-result-object p1

    return-object p1
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 5747
    instance-of p1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 5747
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

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

    .line 5747
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

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

.method public isAlive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isBinary()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
