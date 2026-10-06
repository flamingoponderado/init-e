import InitE.BackendStages.TargetChecks.CorrectLabels0_316
import InitE.BackendStages.TargetChecks.CorrectEncode0_316
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_316
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_316_eq : LabToTarget.sectionLabels 210516 Reencode0_316.lines [] = (211604, localLabels1_316) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 210516 211604 riscvConfig.encode
    Initial316.lines Reencode0_316.lines [] Reencode0_316_eq).trans
    (localLabels0_316_eq.trans (by kernel_rfl))
#print axioms localLabels1_316_eq
end InitE.BackendStages.TargetChecks.Correct
