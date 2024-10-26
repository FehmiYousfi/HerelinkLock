.class public final enum Lnet/lingala/zip4j/progress/ProgressMonitor$State;
.super Ljava/lang/Enum;
.source "ProgressMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lingala/zip4j/progress/ProgressMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/lingala/zip4j/progress/ProgressMonitor$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/lingala/zip4j/progress/ProgressMonitor$State;

.field public static final enum BUSY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

.field public static final enum READY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 24
    new-instance v0, Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    const/4 v1, 0x0

    const-string v2, "READY"

    invoke-direct {v0, v2, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->READY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    new-instance v0, Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    const/4 v2, 0x1

    const-string v3, "BUSY"

    invoke-direct {v0, v3, v2}, Lnet/lingala/zip4j/progress/ProgressMonitor$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->BUSY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    sget-object v3, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->READY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    aput-object v3, v0, v1

    sget-object v1, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->BUSY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    aput-object v1, v0, v2

    sput-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->$VALUES:[Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/lingala/zip4j/progress/ProgressMonitor$State;
    .locals 1

    .line 24
    const-class v0, Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    return-object p0
.end method

.method public static values()[Lnet/lingala/zip4j/progress/ProgressMonitor$State;
    .locals 1

    .line 24
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->$VALUES:[Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    invoke-virtual {v0}, [Lnet/lingala/zip4j/progress/ProgressMonitor$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    return-object v0
.end method
