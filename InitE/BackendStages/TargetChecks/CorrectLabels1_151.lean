import InitE.BackendStages.TargetChecks.CorrectLabels0_151
import InitE.BackendStages.TargetChecks.CorrectEncode0_151
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_151
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_151_eq : LabToTarget.sectionLabels 37904 Reencode0_151.lines [] = (38412, localLabels1_151) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 37904 38412 riscvConfig.encode
    Initial151.lines Reencode0_151.lines [] Reencode0_151_eq).trans
    (localLabels0_151_eq.trans (by kernel_rfl))
#print axioms localLabels1_151_eq
end InitE.BackendStages.TargetChecks.Correct
