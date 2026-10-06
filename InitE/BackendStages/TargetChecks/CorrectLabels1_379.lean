import InitE.BackendStages.TargetChecks.CorrectLabels0_379
import InitE.BackendStages.TargetChecks.CorrectEncode0_379
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_379
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_379_eq : LabToTarget.sectionLabels 257864 Reencode0_379.lines [] = (258724, localLabels1_379) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 257864 258724 riscvConfig.encode
    Initial379.lines Reencode0_379.lines [] Reencode0_379_eq).trans
    (localLabels0_379_eq.trans (by kernel_rfl))
#print axioms localLabels1_379_eq
end InitE.BackendStages.TargetChecks.Correct
