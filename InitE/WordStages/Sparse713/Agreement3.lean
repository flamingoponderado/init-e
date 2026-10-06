import InitE.CompactComputation
import InitE.WordStages.Pass713_3
import InitE.WordStages.Sparse713.Data3

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitE.WordStages.Sparse713
/-- The compact DAG denotes the independently checked dead-code output. -/
theorem pass713_3_agreement : InitE.WordStages.pass713_3 = pass713_3 := by
  kernel_rfl
#print axioms pass713_3_agreement
end InitE.WordStages.Sparse713
