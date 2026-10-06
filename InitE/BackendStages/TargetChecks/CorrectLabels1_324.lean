import InitE.BackendStages.TargetChecks.CorrectLabels0_324
import InitE.BackendStages.TargetChecks.CorrectEncode0_324
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_324
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_324_eq : LabToTarget.sectionLabels 220172 Reencode0_324.lines [] = (222556, localLabels1_324) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 220172 222556 riscvConfig.encode
    Initial324.lines Reencode0_324.lines [] Reencode0_324_eq).trans
    (localLabels0_324_eq.trans (by kernel_rfl))
#print axioms localLabels1_324_eq
end InitE.BackendStages.TargetChecks.Correct
