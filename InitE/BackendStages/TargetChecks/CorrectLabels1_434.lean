import InitE.BackendStages.TargetChecks.CorrectLabels0_434
import InitE.BackendStages.TargetChecks.CorrectEncode0_434
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_434
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_434_eq : LabToTarget.sectionLabels 296144 Reencode0_434.lines [] = (296612, localLabels1_434) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 296144 296612 riscvConfig.encode
    Initial434.lines Reencode0_434.lines [] Reencode0_434_eq).trans
    (localLabels0_434_eq.trans (by kernel_rfl))
#print axioms localLabels1_434_eq
end InitE.BackendStages.TargetChecks.Correct
