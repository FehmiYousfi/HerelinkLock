.class Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs$LazyHolder;
.super Ljava/lang/Object;
.source "ReturnsDeepStubs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final DELEGATE:Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;

.field private static final MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 170
    new-instance v0, Lorg/mockito/internal/MockitoCore;

    invoke-direct {v0}, Lorg/mockito/internal/MockitoCore;-><init>()V

    sput-object v0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs$LazyHolder;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    .line 171
    new-instance v0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;

    invoke-direct {v0}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;-><init>()V

    sput-object v0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs$LazyHolder;->DELEGATE:Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lorg/mockito/internal/MockitoCore;
    .locals 1

    .line 169
    sget-object v0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs$LazyHolder;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    return-object v0
.end method

.method static synthetic access$100()Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;
    .locals 1

    .line 169
    sget-object v0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs$LazyHolder;->DELEGATE:Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;

    return-object v0
.end method
