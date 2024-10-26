.class public final enum Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$ConstructorCall;
.super Ljava/lang/Enum;
.source "Pipe.java"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ConstructorCall"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$ConstructorCall$Appender;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$ConstructorCall;",
        ">;",
        "Lnet/bytebuddy/implementation/Implementation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$ConstructorCall;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$ConstructorCall;


# instance fields
.field private final objectTypeDefaultConstructor:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 327
    new-instance v0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$ConstructorCall;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$ConstructorCall;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$ConstructorCall;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$ConstructorCall;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$ConstructorCall;

    .line 321
    sget-object v2, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$ConstructorCall;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$ConstructorCall;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$ConstructorCall;->$VALUES:[Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$ConstructorCall;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 337
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 338
    sget-object p1, Lnet/bytebuddy/description/type/TypeDescription;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object p1

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isConstructor()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p2

    invoke-interface {p1, p2}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iput-object p1, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$ConstructorCall;->objectTypeDefaultConstructor:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-void
.end method

.method static synthetic access$200(Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$ConstructorCall;)Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 0

    .line 322
    iget-object p0, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$ConstructorCall;->objectTypeDefaultConstructor:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$ConstructorCall;
    .locals 1

    .line 321
    const-class v0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$ConstructorCall;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$ConstructorCall;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$ConstructorCall;
    .locals 1

    .line 321
    sget-object v0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$ConstructorCall;->$VALUES:[Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$ConstructorCall;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$ConstructorCall;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$ConstructorCall;

    return-object v0
.end method


# virtual methods
.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 2

    .line 348
    new-instance v0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$ConstructorCall$Appender;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$ConstructorCall$Appender;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/bind/annotation/Pipe$1;)V

    return-object v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    return-object p1
.end method
