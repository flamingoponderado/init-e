import InitE.BackendStages.TargetChecks.CorrectLabels0_261
import InitE.BackendStages.TargetChecks.CorrectEncode0_261
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_261
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_261_eq : LabToTarget.sectionLabels 153056 Reencode0_261.lines [] = (158276, localLabels1_261) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 153056 158276 riscvConfig.encode
    Initial261.lines Reencode0_261.lines [] Reencode0_261_eq).trans
    (localLabels0_261_eq.trans (by kernel_rfl))
#print axioms localLabels1_261_eq
end InitE.BackendStages.TargetChecks.Correct
