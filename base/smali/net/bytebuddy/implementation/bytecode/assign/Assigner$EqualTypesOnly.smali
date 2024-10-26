.class public abstract enum Lnet/bytebuddy/implementation/bytecode/assign/Assigner$EqualTypesOnly;
.super Ljava/lang/Enum;
.source "Assigner.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/assign/Assigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/assign/Assigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "EqualTypesOnly"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/assign/Assigner$EqualTypesOnly;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/assign/Assigner;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/assign/Assigner$EqualTypesOnly;

.field public static final enum ERASURE:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$EqualTypesOnly;

.field public static final enum GENERIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$EqualTypesOnly;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 95
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$EqualTypesOnly$1;

    const/4 v1, 0x0

    const-string v2, "GENERIC"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$EqualTypesOnly$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$EqualTypesOnly;->GENERIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$EqualTypesOnly;

    .line 107
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$EqualTypesOnly$2;

    const/4 v2, 0x1

    const-string v3, "ERASURE"

    invoke-direct {v0, v3, v2}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$EqualTypesOnly$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$EqualTypesOnly;->ERASURE:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$EqualTypesOnly;

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/bytebuddy/implementation/bytecode/assign/Assigner$EqualTypesOnly;

    .line 90
    sget-object v3, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$EqualTypesOnly;->GENERIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$EqualTypesOnly;

    aput-object v3, v0, v1

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$EqualTypesOnly;->ERASURE:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$EqualTypesOnly;

    aput-object v1, v0, v2

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$EqualTypesOnly;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/assign/Assigner$EqualTypesOnly;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/assign/Assigner$1;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$EqualTypesOnly;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/assign/Assigner$EqualTypesOnly;
    .locals 1

    .line 90
    const-class v0, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$EqualTypesOnly;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$EqualTypesOnly;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/assign/Assigner$EqualTypesOnly;
    .locals 1

    .line 90
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$EqualTypesOnly;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/assign/Assigner$EqualTypesOnly;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/assign/Assigner$EqualTypesOnly;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/assign/Assigner$EqualTypesOnly;

    return-object v0
.end method
