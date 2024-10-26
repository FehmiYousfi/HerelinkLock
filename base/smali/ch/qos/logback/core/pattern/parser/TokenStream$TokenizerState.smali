.class final enum Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/qos/logback/core/pattern/parser/TokenStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TokenizerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

.field public static final enum FORMAT_MODIFIER_STATE:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

.field public static final enum KEYWORD_STATE:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

.field public static final enum LITERAL_STATE:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

.field public static final enum OPTION_STATE:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

.field public static final enum RIGHT_PARENTHESIS_STATE:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    const/4 v1, 0x0

    const-string v2, "LITERAL_STATE"

    invoke-direct {v0, v2, v1}, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;->LITERAL_STATE:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    new-instance v0, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    const/4 v2, 0x1

    const-string v3, "FORMAT_MODIFIER_STATE"

    invoke-direct {v0, v3, v2}, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;->FORMAT_MODIFIER_STATE:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    new-instance v0, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    const/4 v3, 0x2

    const-string v4, "KEYWORD_STATE"

    invoke-direct {v0, v4, v3}, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;->KEYWORD_STATE:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    new-instance v0, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    const/4 v4, 0x3

    const-string v5, "OPTION_STATE"

    invoke-direct {v0, v5, v4}, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;->OPTION_STATE:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    new-instance v0, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    const/4 v5, 0x4

    const-string v6, "RIGHT_PARENTHESIS_STATE"

    invoke-direct {v0, v6, v5}, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;->RIGHT_PARENTHESIS_STATE:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    const/4 v0, 0x5

    new-array v0, v0, [Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    sget-object v6, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;->LITERAL_STATE:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    aput-object v6, v0, v1

    sget-object v1, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;->FORMAT_MODIFIER_STATE:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    aput-object v1, v0, v2

    sget-object v1, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;->KEYWORD_STATE:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    aput-object v1, v0, v3

    sget-object v1, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;->OPTION_STATE:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    aput-object v1, v0, v4

    sget-object v1, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;->RIGHT_PARENTHESIS_STATE:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    aput-object v1, v0, v5

    sput-object v0, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;->$VALUES:[Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;
    .locals 1

    const-class v0, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    return-object p0
.end method

.method public static values()[Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;
    .locals 1

    sget-object v0, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;->$VALUES:[Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    invoke-virtual {v0}, [Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    return-object v0
.end method
