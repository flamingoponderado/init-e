import InitE.BackendStages.Encoded0
import InitE.BackendStages.TargetChecks.Initial0
import InitE.BackendStages.Encoded1
import InitE.BackendStages.TargetChecks.Initial1
import InitE.BackendStages.Encoded2
import InitE.BackendStages.TargetChecks.Initial2
import InitE.BackendStages.Encoded4
import InitE.BackendStages.TargetChecks.Initial4
import InitE.BackendStages.Encoded5
import InitE.BackendStages.TargetChecks.Initial5
import InitE.BackendStages.Encoded6
import InitE.BackendStages.TargetChecks.Initial6
import InitE.BackendStages.Encoded64
import InitE.BackendStages.TargetChecks.Initial64
import InitE.BackendStages.Encoded65
import InitE.BackendStages.TargetChecks.Initial65
import InitE.BackendStages.Encoded66
import InitE.BackendStages.TargetChecks.Initial66
import InitE.BackendStages.Encoded67
import InitE.BackendStages.TargetChecks.Initial67
import InitE.BackendStages.Encoded68
import InitE.BackendStages.TargetChecks.Initial68
import InitE.BackendStages.Encoded69
import InitE.BackendStages.TargetChecks.Initial69
import InitE.BackendStages.Encoded70
import InitE.BackendStages.TargetChecks.Initial70
import InitE.BackendStages.Encoded71
import InitE.BackendStages.TargetChecks.Initial71
import InitE.BackendStages.Encoded72
import InitE.BackendStages.TargetChecks.Initial72
import InitE.BackendStages.Encoded73
import InitE.BackendStages.TargetChecks.Initial73
import InitE.BackendStages.Encoded74
import InitE.BackendStages.TargetChecks.Initial74
import InitE.BackendStages.Encoded75
import InitE.BackendStages.TargetChecks.Initial75
import InitE.BackendStages.Encoded76
import InitE.BackendStages.TargetChecks.Initial76
import InitE.BackendStages.Encoded77
import InitE.BackendStages.TargetChecks.Initial77
import InitE.BackendStages.Encoded78
import InitE.BackendStages.TargetChecks.Initial78
import InitE.BackendStages.Encoded79
import InitE.BackendStages.TargetChecks.Initial79
import InitE.BackendStages.Encoded80
import InitE.BackendStages.TargetChecks.Initial80
import InitE.BackendStages.Encoded81
import InitE.BackendStages.TargetChecks.Initial81
import InitE.BackendStages.Encoded82
import InitE.BackendStages.TargetChecks.Initial82
import InitE.BackendStages.Encoded83
import InitE.BackendStages.TargetChecks.Initial83
import InitE.BackendStages.Encoded84
import InitE.BackendStages.TargetChecks.Initial84
import InitE.BackendStages.Encoded85
import InitE.BackendStages.TargetChecks.Initial85
import InitE.BackendStages.Encoded86
import InitE.BackendStages.TargetChecks.Initial86
import InitE.BackendStages.Encoded87
import InitE.BackendStages.TargetChecks.Initial87
import InitE.BackendStages.Encoded88
import InitE.BackendStages.TargetChecks.Initial88
import InitE.BackendStages.Encoded89
import InitE.BackendStages.TargetChecks.Initial89
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
namespace OriginChunk0
def input : LabSem.LabProgHOL 64 := [Encoded0, Encoded1, Encoded2, Encoded4, Encoded5, Encoded6, Encoded64, Encoded65, Encoded66, Encoded67, Encoded68, Encoded69, Encoded70, Encoded71, Encoded72, Encoded73, Encoded74, Encoded75, Encoded76, Encoded77, Encoded78, Encoded79, Encoded80, Encoded81, Encoded82, Encoded83, Encoded84, Encoded85, Encoded86, Encoded87, Encoded88, Encoded89]
def output : LabSem.LabProgHOL 64 := [Initial0, Initial1, Initial2, Initial4, Initial5, Initial6, Initial64, Initial65, Initial66, Initial67, Initial68, Initial69, Initial70, Initial71, Initial72, Initial73, Initial74, Initial75, Initial76, Initial77, Initial78, Initial79, Initial80, Initial81, Initial82, Initial83, Initial84, Initial85, Initial86, Initial87, Initial88, Initial89]
theorem origin_eq : input = output := by
  with_unfolding_all rfl
#print axioms origin_eq
end OriginChunk0
end InitE.BackendStages.TargetChecks
