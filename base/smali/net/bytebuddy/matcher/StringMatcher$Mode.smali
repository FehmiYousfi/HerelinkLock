.class public abstract enum Lnet/bytebuddy/matcher/StringMatcher$Mode;
.super Ljava/lang/Enum;
.source "StringMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/matcher/StringMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/matcher/StringMatcher$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/matcher/StringMatcher$Mode;

.field public static final enum CONTAINS:Lnet/bytebuddy/matcher/StringMatcher$Mode;

.field public static final enum CONTAINS_IGNORE_CASE:Lnet/bytebuddy/matcher/StringMatcher$Mode;

.field public static final enum ENDS_WITH:Lnet/bytebuddy/matcher/StringMatcher$Mode;

.field public static final enum ENDS_WITH_IGNORE_CASE:Lnet/bytebuddy/matcher/StringMatcher$Mode;

.field public static final enum EQUALS_FULLY:Lnet/bytebuddy/matcher/StringMatcher$Mode;

.field public static final enum EQUALS_FULLY_IGNORE_CASE:Lnet/bytebuddy/matcher/StringMatcher$Mode;

.field public static final enum MATCHES:Lnet/bytebuddy/matcher/StringMatcher$Mode;

.field public static final enum STARTS_WITH:Lnet/bytebuddy/matcher/StringMatcher$Mode;

.field public static final enum STARTS_WITH_IGNORE_CASE:Lnet/bytebuddy/matcher/StringMatcher$Mode;


# instance fields
.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 52
    new-instance v0, Lnet/bytebuddy/matcher/StringMatcher$Mode$1;

    const/4 v1, 0x0

    const-string v2, "EQUALS_FULLY"

    const-string v3, "equals"

    invoke-direct {v0, v2, v1, v3}, Lnet/bytebuddy/matcher/StringMatcher$Mode$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/matcher/StringMatcher$Mode;->EQUALS_FULLY:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    .line 62
    new-instance v0, Lnet/bytebuddy/matcher/StringMatcher$Mode$2;

    const/4 v2, 0x1

    const-string v3, "EQUALS_FULLY_IGNORE_CASE"

    const-string v4, "equalsIgnoreCase"

    invoke-direct {v0, v3, v2, v4}, Lnet/bytebuddy/matcher/StringMatcher$Mode$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/matcher/StringMatcher$Mode;->EQUALS_FULLY_IGNORE_CASE:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    .line 72
    new-instance v0, Lnet/bytebuddy/matcher/StringMatcher$Mode$3;

    const/4 v3, 0x2

    const-string v4, "STARTS_WITH"

    const-string v5, "startsWith"

    invoke-direct {v0, v4, v3, v5}, Lnet/bytebuddy/matcher/StringMatcher$Mode$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/matcher/StringMatcher$Mode;->STARTS_WITH:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    .line 82
    new-instance v0, Lnet/bytebuddy/matcher/StringMatcher$Mode$4;

    const/4 v4, 0x3

    const-string v5, "STARTS_WITH_IGNORE_CASE"

    const-string v6, "startsWithIgnoreCase"

    invoke-direct {v0, v5, v4, v6}, Lnet/bytebuddy/matcher/StringMatcher$Mode$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/matcher/StringMatcher$Mode;->STARTS_WITH_IGNORE_CASE:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    .line 93
    new-instance v0, Lnet/bytebuddy/matcher/StringMatcher$Mode$5;

    const/4 v5, 0x4

    const-string v6, "ENDS_WITH"

    const-string v7, "endsWith"

    invoke-direct {v0, v6, v5, v7}, Lnet/bytebuddy/matcher/StringMatcher$Mode$5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/matcher/StringMatcher$Mode;->ENDS_WITH:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    .line 103
    new-instance v0, Lnet/bytebuddy/matcher/StringMatcher$Mode$6;

    const/4 v6, 0x5

    const-string v7, "ENDS_WITH_IGNORE_CASE"

    const-string v8, "endsWithIgnoreCase"

    invoke-direct {v0, v7, v6, v8}, Lnet/bytebuddy/matcher/StringMatcher$Mode$6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/matcher/StringMatcher$Mode;->ENDS_WITH_IGNORE_CASE:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    .line 114
    new-instance v0, Lnet/bytebuddy/matcher/StringMatcher$Mode$7;

    const/4 v7, 0x6

    const-string v8, "CONTAINS"

    const-string v9, "contains"

    invoke-direct {v0, v8, v7, v9}, Lnet/bytebuddy/matcher/StringMatcher$Mode$7;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/matcher/StringMatcher$Mode;->CONTAINS:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    .line 124
    new-instance v0, Lnet/bytebuddy/matcher/StringMatcher$Mode$8;

    const/4 v8, 0x7

    const-string v9, "CONTAINS_IGNORE_CASE"

    const-string v10, "containsIgnoreCase"

    invoke-direct {v0, v9, v8, v10}, Lnet/bytebuddy/matcher/StringMatcher$Mode$8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/matcher/StringMatcher$Mode;->CONTAINS_IGNORE_CASE:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    .line 135
    new-instance v0, Lnet/bytebuddy/matcher/StringMatcher$Mode$9;

    const/16 v9, 0x8

    const-string v10, "MATCHES"

    const-string v11, "matches"

    invoke-direct {v0, v10, v9, v11}, Lnet/bytebuddy/matcher/StringMatcher$Mode$9;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/matcher/StringMatcher$Mode;->MATCHES:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    const/16 v0, 0x9

    new-array v0, v0, [Lnet/bytebuddy/matcher/StringMatcher$Mode;

    .line 47
    sget-object v10, Lnet/bytebuddy/matcher/StringMatcher$Mode;->EQUALS_FULLY:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    aput-object v10, v0, v1

    sget-object v1, Lnet/bytebuddy/matcher/StringMatcher$Mode;->EQUALS_FULLY_IGNORE_CASE:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/matcher/StringMatcher$Mode;->STARTS_WITH:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lnet/bytebuddy/matcher/StringMatcher$Mode;->STARTS_WITH_IGNORE_CASE:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lnet/bytebuddy/matcher/StringMatcher$Mode;->ENDS_WITH:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    aput-object v1, v0, v5

    sget-object v1, Lnet/bytebuddy/matcher/StringMatcher$Mode;->ENDS_WITH_IGNORE_CASE:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    aput-object v1, v0, v6

    sget-object v1, Lnet/bytebuddy/matcher/StringMatcher$Mode;->CONTAINS:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    aput-object v1, v0, v7

    sget-object v1, Lnet/bytebuddy/matcher/StringMatcher$Mode;->CONTAINS_IGNORE_CASE:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    aput-object v1, v0, v8

    sget-object v1, Lnet/bytebuddy/matcher/StringMatcher$Mode;->MATCHES:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    aput-object v1, v0, v9

    sput-object v0, Lnet/bytebuddy/matcher/StringMatcher$Mode;->$VALUES:[Lnet/bytebuddy/matcher/StringMatcher$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 154
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 155
    iput-object p3, p0, Lnet/bytebuddy/matcher/StringMatcher$Mode;->description:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lnet/bytebuddy/matcher/StringMatcher$1;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/matcher/StringMatcher$Mode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/matcher/StringMatcher$Mode;
    .locals 1

    .line 47
    const-class v0, Lnet/bytebuddy/matcher/StringMatcher$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/matcher/StringMatcher$Mode;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/matcher/StringMatcher$Mode;
    .locals 1

    .line 47
    sget-object v0, Lnet/bytebuddy/matcher/StringMatcher$Mode;->$VALUES:[Lnet/bytebuddy/matcher/StringMatcher$Mode;

    invoke-virtual {v0}, [Lnet/bytebuddy/matcher/StringMatcher$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/matcher/StringMatcher$Mode;

    return-object v0
.end method


# virtual methods
.method protected getDescription()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lnet/bytebuddy/matcher/StringMatcher$Mode;->description:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract matches(Ljava/lang/String;Ljava/lang/String;)Z
.end method
