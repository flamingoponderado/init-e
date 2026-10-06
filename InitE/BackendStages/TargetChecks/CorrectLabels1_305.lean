import InitE.BackendStages.TargetChecks.CorrectLabels0_305
import InitE.BackendStages.TargetChecks.CorrectEncode0_305
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_305
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_305_eq : LabToTarget.sectionLabels 203780 Reencode0_305.lines [] = (204120, localLabels1_305) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 203780 204120 riscvConfig.encode
    Initial305.lines Reencode0_305.lines [] Reencode0_305_eq).trans
    (localLabels0_305_eq.trans (by kernel_rfl))
#print axioms localLabels1_305_eq
end InitE.BackendStages.TargetChecks.Correct
