import InitE.BackendStages.TargetChecks.CorrectLabels0_486
import InitE.BackendStages.TargetChecks.CorrectEncode0_486
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_486
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_486_eq : LabToTarget.sectionLabels 343464 Reencode0_486.lines [] = (343860, localLabels1_486) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 343464 343860 riscvConfig.encode
    Initial486.lines Reencode0_486.lines [] Reencode0_486_eq).trans
    (localLabels0_486_eq.trans (by kernel_rfl))
#print axioms localLabels1_486_eq
end InitE.BackendStages.TargetChecks.Correct
