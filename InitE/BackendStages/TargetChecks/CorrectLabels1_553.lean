import InitE.BackendStages.TargetChecks.CorrectLabels0_553
import InitE.BackendStages.TargetChecks.CorrectEncode0_553
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_553
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_553_eq : LabToTarget.sectionLabels 398576 Reencode0_553.lines [] = (399448, localLabels1_553) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 398576 399448 riscvConfig.encode
    Initial553.lines Reencode0_553.lines [] Reencode0_553_eq).trans
    (localLabels0_553_eq.trans (by kernel_rfl))
#print axioms localLabels1_553_eq
end InitE.BackendStages.TargetChecks.Correct
