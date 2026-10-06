import InitE.BackendStages.TargetChecks.CorrectLabels0_425
import InitE.BackendStages.TargetChecks.CorrectEncode0_425
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_425
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_425_eq : LabToTarget.sectionLabels 289560 Reencode0_425.lines [] = (290036, localLabels1_425) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 289560 290036 riscvConfig.encode
    Initial425.lines Reencode0_425.lines [] Reencode0_425_eq).trans
    (localLabels0_425_eq.trans (by kernel_rfl))
#print axioms localLabels1_425_eq
end InitE.BackendStages.TargetChecks.Correct
