.class public Lorg/mockito/internal/invocation/TypeSafeMatching;
.super Ljava/lang/Object;
.source "TypeSafeMatching.java"

# interfaces
.implements Lorg/mockito/internal/invocation/ArgumentMatcherAction;


# static fields
.field private static final TYPE_SAFE_MATCHING_ACTION:Lorg/mockito/internal/invocation/ArgumentMatcherAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lorg/mockito/internal/invocation/TypeSafeMatching;

    invoke-direct {v0}, Lorg/mockito/internal/invocation/TypeSafeMatching;-><init>()V

    sput-object v0, Lorg/mockito/internal/invocation/TypeSafeMatching;->TYPE_SAFE_MATCHING_ACTION:Lorg/mockito/internal/invocation/ArgumentMatcherAction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getArgumentType(Lorg/mockito/ArgumentMatcher;)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/ArgumentMatcher<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 49
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 50
    invoke-static {v4}, Lorg/mockito/internal/invocation/TypeSafeMatching;->isMatchesMethod(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 51
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    aget-object p0, p0, v2

    return-object p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 54
    :cond_1
    new-instance v0, Ljava/lang/NoSuchMethodError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method \'matches(T)\' not found in ArgumentMatcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " !\r\n Please file a bug with this stack trace at: https://github.com/mockito/mockito/issues/new "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isCompatible(Lorg/mockito/ArgumentMatcher;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/ArgumentMatcher<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 37
    :cond_0
    invoke-static {p0}, Lorg/mockito/internal/invocation/TypeSafeMatching;->getArgumentType(Lorg/mockito/ArgumentMatcher;)Ljava/lang/Class;

    move-result-object p0

    .line 39
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isMatchesMethod(Ljava/lang/reflect/Method;)Z
    .locals 3

    .line 62
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    .line 65
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 68
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "matches"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static matchesTypeSafe()Lorg/mockito/internal/invocation/ArgumentMatcherAction;
    .locals 1

    .line 20
    sget-object v0, Lorg/mockito/internal/invocation/TypeSafeMatching;->TYPE_SAFE_MATCHING_ACTION:Lorg/mockito/internal/invocation/ArgumentMatcherAction;

    return-object v0
.end method


# virtual methods
.method public apply(Lorg/mockito/ArgumentMatcher;Ljava/lang/Object;)Z
    .locals 1

    .line 24
    invoke-static {p1, p2}, Lorg/mockito/internal/invocation/TypeSafeMatching;->isCompatible(Lorg/mockito/ArgumentMatcher;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Lorg/mockito/ArgumentMatcher;->matches(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
