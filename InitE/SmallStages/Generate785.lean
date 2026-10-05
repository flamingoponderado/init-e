import Tools.GenSmallStages
import InitE.SmallStages.Oracles785
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 785 InitE.WordStages.source785.2.1 InitE.WordStages.source785.2.2 InitE.SmallStages.Oracles785.oracle785
