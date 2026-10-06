import InitE.BackendStages.TargetChecks.CorrectLabels0_366
import InitE.BackendStages.TargetChecks.CorrectEncode0_366
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_366
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_366_eq : LabToTarget.sectionLabels 250532 Reencode0_366.lines [] = (250984, localLabels1_366) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 250532 250984 riscvConfig.encode
    Initial366.lines Reencode0_366.lines [] Reencode0_366_eq).trans
    (localLabels0_366_eq.trans (by kernel_rfl))
#print axioms localLabels1_366_eq
end InitE.BackendStages.TargetChecks.Correct
