import Tools.GenSmallStages
import InitE.SmallStages.Oracles842
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 842 InitE.WordStages.source842.2.1 InitE.WordStages.source842.2.2 InitE.SmallStages.Oracles842.oracle842
