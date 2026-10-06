import InitE.BackendStages.TargetChecks.CorrectLabels0_310
import InitE.BackendStages.TargetChecks.CorrectEncode0_310
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_310
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_310_eq : LabToTarget.sectionLabels 207032 Reencode0_310.lines [] = (207248, localLabels1_310) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 207032 207248 riscvConfig.encode
    Initial310.lines Reencode0_310.lines [] Reencode0_310_eq).trans
    (localLabels0_310_eq.trans (by kernel_rfl))
#print axioms localLabels1_310_eq
end InitE.BackendStages.TargetChecks.Correct
