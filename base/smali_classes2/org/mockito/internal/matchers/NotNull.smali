.class public Lorg/mockito/internal/matchers/NotNull;
.super Ljava/lang/Object;
.source "NotNull.java"

# interfaces
.implements Lorg/mockito/ArgumentMatcher;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/ArgumentMatcher<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final NOT_NULL:Lorg/mockito/internal/matchers/NotNull;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lorg/mockito/internal/matchers/NotNull;

    invoke-direct {v0}, Lorg/mockito/internal/matchers/NotNull;-><init>()V

    sput-object v0, Lorg/mockito/internal/matchers/NotNull;->NOT_NULL:Lorg/mockito/internal/matchers/NotNull;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "notNull()"

    return-object v0
.end method
