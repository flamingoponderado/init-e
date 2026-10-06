import InitE.BackendStages.Encoded90
import InitE.BackendStages.TargetChecks.Initial90
import InitE.BackendStages.Encoded91
import InitE.BackendStages.TargetChecks.Initial91
import InitE.BackendStages.Encoded92
import InitE.BackendStages.TargetChecks.Initial92
import InitE.BackendStages.Encoded93
import InitE.BackendStages.TargetChecks.Initial93
import InitE.BackendStages.Encoded94
import InitE.BackendStages.TargetChecks.Initial94
import InitE.BackendStages.Encoded95
import InitE.BackendStages.TargetChecks.Initial95
import InitE.BackendStages.Encoded96
import InitE.BackendStages.TargetChecks.Initial96
import InitE.BackendStages.Encoded97
import InitE.BackendStages.TargetChecks.Initial97
import InitE.BackendStages.Encoded98
import InitE.BackendStages.TargetChecks.Initial98
import InitE.BackendStages.Encoded99
import InitE.BackendStages.TargetChecks.Initial99
import InitE.BackendStages.Encoded100
import InitE.BackendStages.TargetChecks.Initial100
import InitE.BackendStages.Encoded101
import InitE.BackendStages.TargetChecks.Initial101
import InitE.BackendStages.Encoded102
import InitE.BackendStages.TargetChecks.Initial102
import InitE.BackendStages.Encoded103
import InitE.BackendStages.TargetChecks.Initial103
import InitE.BackendStages.Encoded104
import InitE.BackendStages.TargetChecks.Initial104
import InitE.BackendStages.Encoded105
import InitE.BackendStages.TargetChecks.Initial105
import InitE.BackendStages.Encoded106
import InitE.BackendStages.TargetChecks.Initial106
import InitE.BackendStages.Encoded107
import InitE.BackendStages.TargetChecks.Initial107
import InitE.BackendStages.Encoded108
import InitE.BackendStages.TargetChecks.Initial108
import InitE.BackendStages.Encoded109
import InitE.BackendStages.TargetChecks.Initial109
import InitE.BackendStages.Encoded110
import InitE.BackendStages.TargetChecks.Initial110
import InitE.BackendStages.Encoded111
import InitE.BackendStages.TargetChecks.Initial111
import InitE.BackendStages.Encoded112
import InitE.BackendStages.TargetChecks.Initial112
import InitE.BackendStages.Encoded113
import InitE.BackendStages.TargetChecks.Initial113
import InitE.BackendStages.Encoded114
import InitE.BackendStages.TargetChecks.Initial114
import InitE.BackendStages.Encoded115
import InitE.BackendStages.TargetChecks.Initial115
import InitE.BackendStages.Encoded116
import InitE.BackendStages.TargetChecks.Initial116
import InitE.BackendStages.Encoded117
import InitE.BackendStages.TargetChecks.Initial117
import InitE.BackendStages.Encoded118
import InitE.BackendStages.TargetChecks.Initial118
import InitE.BackendStages.Encoded119
import InitE.BackendStages.TargetChecks.Initial119
import InitE.BackendStages.Encoded120
import InitE.BackendStages.TargetChecks.Initial120
import InitE.BackendStages.Encoded121
import InitE.BackendStages.TargetChecks.Initial121
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
namespace OriginChunk1
def input : LabSem.LabProgHOL 64 := [Encoded90, Encoded91, Encoded92, Encoded93, Encoded94, Encoded95, Encoded96, Encoded97, Encoded98, Encoded99, Encoded100, Encoded101, Encoded102, Encoded103, Encoded104, Encoded105, Encoded106, Encoded107, Encoded108, Encoded109, Encoded110, Encoded111, Encoded112, Encoded113, Encoded114, Encoded115, Encoded116, Encoded117, Encoded118, Encoded119, Encoded120, Encoded121]
def output : LabSem.LabProgHOL 64 := [Initial90, Initial91, Initial92, Initial93, Initial94, Initial95, Initial96, Initial97, Initial98, Initial99, Initial100, Initial101, Initial102, Initial103, Initial104, Initial105, Initial106, Initial107, Initial108, Initial109, Initial110, Initial111, Initial112, Initial113, Initial114, Initial115, Initial116, Initial117, Initial118, Initial119, Initial120, Initial121]
theorem origin_eq : input = output := by
  with_unfolding_all rfl
#print axioms origin_eq
end OriginChunk1
end InitE.BackendStages.TargetChecks
