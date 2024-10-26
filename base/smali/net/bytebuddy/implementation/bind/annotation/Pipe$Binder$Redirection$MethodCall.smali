.class public Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;
.super Ljava/lang/Object;
.source "Pipe.java"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MethodCall"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall$Appender;
    }
.end annotation


# instance fields
.field private final assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

.field private final redirectedMethod:Lnet/bytebuddy/description/method/MethodDescription;


# direct methods
.method private constructor <init>(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)V
    .locals 0

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    iput-object p1, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;->redirectedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 422
    iput-object p2, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    return-void
.end method

.method synthetic constructor <init>(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bind/annotation/Pipe$1;)V
    .locals 0

    .line 402
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;-><init>(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)V

    return-void
.end method

.method static synthetic access$400(Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;)Lnet/bytebuddy/description/method/MethodDescription;
    .locals 0

    .line 402
    iget-object p0, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;->redirectedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    return-object p0
.end method

.method static synthetic access$500(Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;)Lnet/bytebuddy/implementation/bytecode/assign/Assigner;
    .locals 0

    .line 402
    iget-object p0, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    return-object p0
.end method


# virtual methods
.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 2

    .line 432
    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;->redirectedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/MethodDescription;->isAccessibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    new-instance v0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall$Appender;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall$Appender;-><init>(Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/bind/annotation/Pipe$1;)V

    return-object v0

    .line 433
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot invoke "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;->redirectedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from outside of class via @Pipe proxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 401
    instance-of p1, p1, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 401
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;->redirectedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;->redirectedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    if-nez v1, :cond_5

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :goto_1
    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 401
    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;->redirectedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    iget-object v3, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    return-object p1
.end method
