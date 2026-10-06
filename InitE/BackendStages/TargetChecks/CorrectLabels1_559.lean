import InitE.BackendStages.TargetChecks.CorrectLabels0_559
import InitE.BackendStages.TargetChecks.CorrectEncode0_559
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_559
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_559_eq : LabToTarget.sectionLabels 403256 Reencode0_559.lines [] = (403700, localLabels1_559) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 403256 403700 riscvConfig.encode
    Initial559.lines Reencode0_559.lines [] Reencode0_559_eq).trans
    (localLabels0_559_eq.trans (by kernel_rfl))
#print axioms localLabels1_559_eq
end InitE.BackendStages.TargetChecks.Correct
