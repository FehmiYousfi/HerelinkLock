.class final enum Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;
.super Ljava/lang/Enum;
.source "MatcherApplicationStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/invocation/MatcherApplicationStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MatcherApplicationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

.field public static final enum ERROR_UNSUPPORTED_NUMBER_OF_MATCHERS:Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

.field public static final enum MATCH_EACH_VARARGS_WITH_LAST_MATCHER:Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

.field public static final enum ONE_MATCHER_PER_ARGUMENT:Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 130
    new-instance v0, Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    const/4 v1, 0x0

    const-string v2, "ONE_MATCHER_PER_ARGUMENT"

    invoke-direct {v0, v2, v1}, Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;->ONE_MATCHER_PER_ARGUMENT:Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    new-instance v0, Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    const/4 v2, 0x1

    const-string v3, "MATCH_EACH_VARARGS_WITH_LAST_MATCHER"

    invoke-direct {v0, v3, v2}, Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;->MATCH_EACH_VARARGS_WITH_LAST_MATCHER:Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    new-instance v0, Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    const/4 v3, 0x2

    const-string v4, "ERROR_UNSUPPORTED_NUMBER_OF_MATCHERS"

    invoke-direct {v0, v4, v3}, Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;->ERROR_UNSUPPORTED_NUMBER_OF_MATCHERS:Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    .line 129
    sget-object v4, Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;->ONE_MATCHER_PER_ARGUMENT:Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    aput-object v4, v0, v1

    sget-object v1, Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;->MATCH_EACH_VARARGS_WITH_LAST_MATCHER:Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;->ERROR_UNSUPPORTED_NUMBER_OF_MATCHERS:Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;->$VALUES:[Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;
    .locals 1

    .line 129
    const-class v0, Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    return-object p0
.end method

.method public static values()[Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;
    .locals 1

    .line 129
    sget-object v0, Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;->$VALUES:[Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    invoke-virtual {v0}, [Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    return-object v0
.end method
