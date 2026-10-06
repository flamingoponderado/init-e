import InitE.BackendStages.TargetChecks.CorrectLabels0_326
import InitE.BackendStages.TargetChecks.CorrectEncode0_326
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_326
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_326_eq : LabToTarget.sectionLabels 222644 Reencode0_326.lines [] = (224584, localLabels1_326) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 222644 224584 riscvConfig.encode
    Initial326.lines Reencode0_326.lines [] Reencode0_326_eq).trans
    (localLabels0_326_eq.trans (by kernel_rfl))
#print axioms localLabels1_326_eq
end InitE.BackendStages.TargetChecks.Correct
