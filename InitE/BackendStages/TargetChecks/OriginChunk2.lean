import InitE.BackendStages.Encoded122
import InitE.BackendStages.TargetChecks.Initial122
import InitE.BackendStages.Encoded123
import InitE.BackendStages.TargetChecks.Initial123
import InitE.BackendStages.Encoded124
import InitE.BackendStages.TargetChecks.Initial124
import InitE.BackendStages.Encoded125
import InitE.BackendStages.TargetChecks.Initial125
import InitE.BackendStages.Encoded126
import InitE.BackendStages.TargetChecks.Initial126
import InitE.BackendStages.Encoded127
import InitE.BackendStages.TargetChecks.Initial127
import InitE.BackendStages.Encoded128
import InitE.BackendStages.TargetChecks.Initial128
import InitE.BackendStages.Encoded129
import InitE.BackendStages.TargetChecks.Initial129
import InitE.BackendStages.Encoded130
import InitE.BackendStages.TargetChecks.Initial130
import InitE.BackendStages.Encoded131
import InitE.BackendStages.TargetChecks.Initial131
import InitE.BackendStages.Encoded132
import InitE.BackendStages.TargetChecks.Initial132
import InitE.BackendStages.Encoded133
import InitE.BackendStages.TargetChecks.Initial133
import InitE.BackendStages.Encoded134
import InitE.BackendStages.TargetChecks.Initial134
import InitE.BackendStages.Encoded135
import InitE.BackendStages.TargetChecks.Initial135
import InitE.BackendStages.Encoded136
import InitE.BackendStages.TargetChecks.Initial136
import InitE.BackendStages.Encoded137
import InitE.BackendStages.TargetChecks.Initial137
import InitE.BackendStages.Encoded138
import InitE.BackendStages.TargetChecks.Initial138
import InitE.BackendStages.Encoded139
import InitE.BackendStages.TargetChecks.Initial139
import InitE.BackendStages.Encoded140
import InitE.BackendStages.TargetChecks.Initial140
import InitE.BackendStages.Encoded141
import InitE.BackendStages.TargetChecks.Initial141
import InitE.BackendStages.Encoded142
import InitE.BackendStages.TargetChecks.Initial142
import InitE.BackendStages.Encoded143
import InitE.BackendStages.TargetChecks.Initial143
import InitE.BackendStages.Encoded144
import InitE.BackendStages.TargetChecks.Initial144
import InitE.BackendStages.Encoded145
import InitE.BackendStages.TargetChecks.Initial145
import InitE.BackendStages.Encoded146
import InitE.BackendStages.TargetChecks.Initial146
import InitE.BackendStages.Encoded147
import InitE.BackendStages.TargetChecks.Initial147
import InitE.BackendStages.Encoded148
import InitE.BackendStages.TargetChecks.Initial148
import InitE.BackendStages.Encoded149
import InitE.BackendStages.TargetChecks.Initial149
import InitE.BackendStages.Encoded150
import InitE.BackendStages.TargetChecks.Initial150
import InitE.BackendStages.Encoded151
import InitE.BackendStages.TargetChecks.Initial151
import InitE.BackendStages.Encoded152
import InitE.BackendStages.TargetChecks.Initial152
import InitE.BackendStages.Encoded153
import InitE.BackendStages.TargetChecks.Initial153
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
namespace OriginChunk2
def input : LabSem.LabProgHOL 64 := [Encoded122, Encoded123, Encoded124, Encoded125, Encoded126, Encoded127, Encoded128, Encoded129, Encoded130, Encoded131, Encoded132, Encoded133, Encoded134, Encoded135, Encoded136, Encoded137, Encoded138, Encoded139, Encoded140, Encoded141, Encoded142, Encoded143, Encoded144, Encoded145, Encoded146, Encoded147, Encoded148, Encoded149, Encoded150, Encoded151, Encoded152, Encoded153]
def output : LabSem.LabProgHOL 64 := [Initial122, Initial123, Initial124, Initial125, Initial126, Initial127, Initial128, Initial129, Initial130, Initial131, Initial132, Initial133, Initial134, Initial135, Initial136, Initial137, Initial138, Initial139, Initial140, Initial141, Initial142, Initial143, Initial144, Initial145, Initial146, Initial147, Initial148, Initial149, Initial150, Initial151, Initial152, Initial153]
theorem origin_eq : input = output := by
  with_unfolding_all rfl
#print axioms origin_eq
end OriginChunk2
end InitE.BackendStages.TargetChecks
