import InitE.BackendStages.TargetChecks.CorrectLabels0_129
import InitE.BackendStages.TargetChecks.CorrectEncode0_129
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_129
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_129_eq : LabToTarget.sectionLabels 25164 Reencode0_129.lines [] = (26376, localLabels1_129) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 25164 26376 riscvConfig.encode
    Initial129.lines Reencode0_129.lines [] Reencode0_129_eq).trans
    (localLabels0_129_eq.trans (by kernel_rfl))
#print axioms localLabels1_129_eq
end InitE.BackendStages.TargetChecks.Correct
