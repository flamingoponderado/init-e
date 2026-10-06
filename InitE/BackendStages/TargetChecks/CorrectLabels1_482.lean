import InitE.BackendStages.TargetChecks.CorrectLabels0_482
import InitE.BackendStages.TargetChecks.CorrectEncode0_482
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_482
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_482_eq : LabToTarget.sectionLabels 340104 Reencode0_482.lines [] = (341556, localLabels1_482) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 340104 341556 riscvConfig.encode
    Initial482.lines Reencode0_482.lines [] Reencode0_482_eq).trans
    (localLabels0_482_eq.trans (by kernel_rfl))
#print axioms localLabels1_482_eq
end InitE.BackendStages.TargetChecks.Correct
