.class public Lcom/secshell/shellwrapper/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# static fields
.field public static APPNAME:Ljava/lang/String;

.field public static JNIPPATH:Ljava/lang/String;

.field public static PKGNAME:Ljava/lang/String;

.field public static PPATH:Ljava/lang/String;

.field public static cl:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    sput-object v0, Lcom/secshell/shellwrapper/Helper;->PPATH:Ljava/lang/String;

    .line 14
    sput-object v0, Lcom/secshell/shellwrapper/Helper;->JNIPPATH:Ljava/lang/String;

    .line 15
    const-string v0, "com.andr0day.shelldetect"

    sput-object v0, Lcom/secshell/shellwrapper/Helper;->PKGNAME:Ljava/lang/String;

    .line 16
    const-string v0, "com.andr0day.shelldetect.App"

    sput-object v0, Lcom/secshell/shellwrapper/Helper;->APPNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native attach(Landroid/app/Application;Landroid/content/Context;)V
.end method

.method public static stub()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method
