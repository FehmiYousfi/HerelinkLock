.class public final enum Lnet/bytebuddy/dynamic/Transformer$NoOp;
.super Ljava/lang/Enum;
.source "Transformer.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/Transformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/Transformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/Transformer$NoOp;",
        ">;",
        "Lnet/bytebuddy/dynamic/Transformer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/Transformer$NoOp;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/Transformer$NoOp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    new-instance v0, Lnet/bytebuddy/dynamic/Transformer$NoOp;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/dynamic/Transformer$NoOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/Transformer$NoOp;->INSTANCE:Lnet/bytebuddy/dynamic/Transformer$NoOp;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/dynamic/Transformer$NoOp;

    .line 41
    sget-object v2, Lnet/bytebuddy/dynamic/Transformer$NoOp;->INSTANCE:Lnet/bytebuddy/dynamic/Transformer$NoOp;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/dynamic/Transformer$NoOp;->$VALUES:[Lnet/bytebuddy/dynamic/Transformer$NoOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static make()Lnet/bytebuddy/dynamic/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lnet/bytebuddy/dynamic/Transformer<",
            "TT;>;"
        }
    .end annotation

    .line 56
    sget-object v0, Lnet/bytebuddy/dynamic/Transformer$NoOp;->INSTANCE:Lnet/bytebuddy/dynamic/Transformer$NoOp;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/Transformer$NoOp;
    .locals 1

    .line 41
    const-class v0, Lnet/bytebuddy/dynamic/Transformer$NoOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/Transformer$NoOp;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/Transformer$NoOp;
    .locals 1

    .line 41
    sget-object v0, Lnet/bytebuddy/dynamic/Transformer$NoOp;->$VALUES:[Lnet/bytebuddy/dynamic/Transformer$NoOp;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/Transformer$NoOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/Transformer$NoOp;

    return-object v0
.end method


# virtual methods
.method public transform(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p2
.end method
