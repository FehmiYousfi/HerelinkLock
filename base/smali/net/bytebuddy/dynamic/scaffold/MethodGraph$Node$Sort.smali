.class public final enum Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;
.super Ljava/lang/Enum;
.source "MethodGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Sort"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

.field public static final enum AMBIGUOUS:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

.field public static final enum RESOLVED:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

.field public static final enum UNRESOLVED:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

.field public static final enum VISIBLE:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;


# instance fields
.field private final madeVisible:Z

.field private final resolved:Z

.field private final unique:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 202
    new-instance v6, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    const-string v1, "VISIBLE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v6, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;->VISIBLE:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    .line 207
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    const-string v8, "RESOLVED"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;->RESOLVED:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    .line 212
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    const-string v2, "AMBIGUOUS"

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;->AMBIGUOUS:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    .line 217
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    const-string v8, "UNRESOLVED"

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;->UNRESOLVED:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    const/4 v0, 0x4

    new-array v0, v0, [Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    .line 197
    sget-object v1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;->VISIBLE:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;->RESOLVED:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;->AMBIGUOUS:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;->UNRESOLVED:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)V"
        }
    .end annotation

    .line 241
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 242
    iput-boolean p3, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;->resolved:Z

    .line 243
    iput-boolean p4, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;->unique:Z

    .line 244
    iput-boolean p5, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;->madeVisible:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;
    .locals 1

    .line 197
    const-class v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;
    .locals 1

    .line 197
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    return-object v0
.end method


# virtual methods
.method public isMadeVisible()Z
    .locals 1

    .line 271
    iget-boolean v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;->madeVisible:Z

    return v0
.end method

.method public isResolved()Z
    .locals 1

    .line 253
    iget-boolean v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;->resolved:Z

    return v0
.end method

.method public isUnique()Z
    .locals 1

    .line 262
    iget-boolean v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;->unique:Z

    return v0
.end method
