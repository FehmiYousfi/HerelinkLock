.class public final enum Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Compiled$NoOp;
.super Ljava/lang/Enum;
.source "FieldRegistry.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Compiled;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Compiled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Compiled$NoOp;",
        ">;",
        "Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Compiled;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Compiled$NoOp;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Compiled$NoOp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 60
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Compiled$NoOp;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Compiled$NoOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Compiled$NoOp;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Compiled$NoOp;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Compiled$NoOp;

    .line 55
    sget-object v2, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Compiled$NoOp;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Compiled$NoOp;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Compiled$NoOp;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Compiled$NoOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Compiled$NoOp;
    .locals 1

    .line 55
    const-class v0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Compiled$NoOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Compiled$NoOp;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Compiled$NoOp;
    .locals 1

    .line 55
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Compiled$NoOp;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Compiled$NoOp;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Compiled$NoOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Compiled$NoOp;

    return-object v0
.end method


# virtual methods
.method public target(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record;
    .locals 1

    .line 64
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForImplicitField;

    invoke-direct {v0, p1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForImplicitField;-><init>(Lnet/bytebuddy/description/field/FieldDescription;)V

    return-object v0
.end method
