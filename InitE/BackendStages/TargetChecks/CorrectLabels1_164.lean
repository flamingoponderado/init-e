import InitE.BackendStages.TargetChecks.CorrectLabels0_164
import InitE.BackendStages.TargetChecks.CorrectEncode0_164
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_164
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_164_eq : LabToTarget.sectionLabels 49200 Reencode0_164.lines [] = (49896, localLabels1_164) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 49200 49896 riscvConfig.encode
    Initial164.lines Reencode0_164.lines [] Reencode0_164_eq).trans
    (localLabels0_164_eq.trans (by kernel_rfl))
#print axioms localLabels1_164_eq
end InitE.BackendStages.TargetChecks.Correct
