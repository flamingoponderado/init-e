import Tools.GenSmallStages
import InitE.SmallStages.Oracles714
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 714 InitE.WordStages.source714.2.1 InitE.WordStages.source714.2.2 InitE.SmallStages.Oracles714.oracle714
