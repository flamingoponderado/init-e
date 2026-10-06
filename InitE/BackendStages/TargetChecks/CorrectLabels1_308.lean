import InitE.BackendStages.TargetChecks.CorrectLabels0_308
import InitE.BackendStages.TargetChecks.CorrectEncode0_308
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_308
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_308_eq : LabToTarget.sectionLabels 205772 Reencode0_308.lines [] = (206788, localLabels1_308) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 205772 206788 riscvConfig.encode
    Initial308.lines Reencode0_308.lines [] Reencode0_308_eq).trans
    (localLabels0_308_eq.trans (by kernel_rfl))
#print axioms localLabels1_308_eq
end InitE.BackendStages.TargetChecks.Correct
