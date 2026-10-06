import Tools.GenSmallStages
import InitE.SmallStages.Oracles576
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 576 InitE.WordStages.source576.2.1 InitE.WordStages.source576.2.2 InitE.SmallStages.Oracles576.oracle576
