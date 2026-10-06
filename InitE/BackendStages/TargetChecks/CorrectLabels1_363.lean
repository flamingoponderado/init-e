import InitE.BackendStages.TargetChecks.CorrectLabels0_363
import InitE.BackendStages.TargetChecks.CorrectEncode0_363
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_363
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_363_eq : LabToTarget.sectionLabels 247484 Reencode0_363.lines [] = (249200, localLabels1_363) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 247484 249200 riscvConfig.encode
    Initial363.lines Reencode0_363.lines [] Reencode0_363_eq).trans
    (localLabels0_363_eq.trans (by kernel_rfl))
#print axioms localLabels1_363_eq
end InitE.BackendStages.TargetChecks.Correct
